//Script to update google sheets using golang
// Data is pulled from a SQL DB and pushed over to the google sheet.
// SQL DB => Fetch Data => Write to remote google sheets
package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"golang.org/x/net/context"
	"golang.org/x/oauth2"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/sheets/v4"
)

// Retrieve a token, saves the token, then returns the generated client.
func getClient(config *oauth2.Config) *http.Client {
	// The file token.json stores the user's access and refresh tokens, and is
	// created automatically when the authorization flow completes for the first
	// time.
	tokFile := "token.json"
	tok, err := tokenFromFile(tokFile)
	if err != nil {
		tok = getTokenFromWeb(config)
		saveToken(tokFile, tok)
	}
	return config.Client(context.Background(), tok)
}

// Request a token from the web, then returns the retrieved token.
func getTokenFromWeb(config *oauth2.Config) *oauth2.Token {
	authURL := config.AuthCodeURL("state-token", oauth2.AccessTypeOffline)
	fmt.Printf("Go to the following link in your browser then type the "+
		"authorization code: \n%v\n", authURL)

	var authCode string
	if _, err := fmt.Scan(&authCode); err != nil {
		log.Fatalf("Unable to read authorization code: %v", err)
	}

	tok, err := config.Exchange(context.TODO(), authCode)
	if err != nil {
		log.Fatalf("Unable to retrieve token from web: %v", err)
	}
	return tok
}

// Retrieves a token from a local file.
func tokenFromFile(file string) (*oauth2.Token, error) {
	f, err := os.Open(file)
	if err != nil {
		return nil, err
	}
	defer f.Close()
	tok := &oauth2.Token{}
	err = json.NewDecoder(f).Decode(tok)
	return tok, err
}

// Saves a token to a file path.
func saveToken(path string, token *oauth2.Token) {
	fmt.Printf("Saving credential file to: %s\n", path)
	f, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0600)
	if err != nil {
		log.Fatalf("Unable to cache oauth token: %v", err)
	}
	defer f.Close()
	json.NewEncoder(f).Encode(token)
}

// Create a struct to store our rows

// type Entry struct {
//      ID int `json:"id"`
//      Title string `json:"title"`
//      Date string `json:"date"`
// }

func main() {
	// Use your credentials here.
	db, err := sql.Open("mysql", "mysqlUser:mySQLpw@tcp(127.0.0.1:3306)/db_name")
	db.SetConnMaxLifetime(time.Minute * 3)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	if err != nil {
		panic(err.Error())
	}

	defer db.Close()

	// Fetch the Query from the DB
	res, err := db.Query("select id,title,date(updated_at) from articles where status='Published' order by updated_at desc;")
	if err != nil {
		panic(err.Error())
	}

	// Creating an Interface
	rows := make([][]interface{}, 0)
	// Adding the first line of the sheet
	rows = append(rows, []interface{}{"Last Updated", "Title", "Article Link"})

	// Then we loop over the Result Data
	for res.Next() {

		// Declare the necessary data
		var (
			id, title, date string
		)
		err = res.Scan(&id, &title, &date)
		if err != nil {
			panic(err.Error()) // proper error handling instead of panic in your app
		}
		// Specific to My Use case I had to build a link
		link := fmt.Sprintf("http://<domain>/article/%s", id)

		// Append the data to add to the sheet
		rows = append(rows, []interface{}{date, title, link})
	}

	// I had to use a Service Account to build my app
	b, err := ioutil.ReadFile("service-account-creds.json")
	if err != nil {
		log.Fatalf("Unable to read client secret file: %v", err)
	}

	// If modifying these scopes, delete your previously saved token.json.

	config, err := google.JWTConfigFromJSON(b, "https://www.googleapis.com/auth/spreadsheets")
	if err != nil {
		log.Fatalf("Unable to parse client secret file to config: %v", err)
	}
	client := config.Client(oauth2.NoContext)

	spreadsheetId := "<spreadsheetID>"
	//readRange := "Sheet1!A2:B5"

	srv, err := sheets.New(client)
	if err != nil {
		log.Fatalf("Unable to retrieve Sheets client: %v", err)
	}

	// Modify this to your Needs
	rangeData := "sheet1!A1:E"
	rb := &sheets.BatchUpdateValuesRequest{
		ValueInputOption: "USER_ENTERED",
	}
	rb.Data = append(rb.Data, &sheets.ValueRange{
		Range:  rangeData,
		Values: rows,
	})
	// Do a batch update at once
	_, err = srv.Spreadsheets.Values.BatchUpdate(spreadsheetId, rb).Do()
	if err != nil {
		log.Fatal(err)
	}

}
