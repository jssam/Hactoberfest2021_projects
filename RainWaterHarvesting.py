import requests

requirement = int(input("Enter your Water Requirement in Gallons"))
area = int(input("Enter your House Area in sq ft."))

result = (620/1000) * area
if result == requirement :
    print("It is possible")

else:
    print("You can save upto " + result + " Gallons of Water" )


    
print("Save Water")
url = "https://qvoca-bestquotes-v1.p.rapidapi.com/quote"

querystring = {"genre":"Save Water"}

headers = {
    'x-rapidapi-host': "qvoca-bestquotes-v1.p.rapidapi.com",
    'x-rapidapi-key': "fee60f7ff6msh51eb6f367bd2b08p1bae02jsn042b638fc628"
    }

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)




