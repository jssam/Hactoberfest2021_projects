const fs=require("fs");
const cheerio=require("cheerio");
const request= require("request");
if(!fs.existsSync("./Questions")){
    fs.mkdirSync("./Questions");
}


let link = [];
let url="https://codeforces.com/problemset/page/";
var i=1;
var count =0;
for(i=1;i<=69;i++){
    // url=url+i;
    request(url+i,cb);
    count++;
    // console.log(url);
    console.log(i);
}

function cb(error,response,body){
    parseData(body);
    count--;
    if(count==0){
         htmlmaker();
    }
}

function parseData(html){
    let $=cheerio.load(html+"");
    // console.log($.html());
    let prblmlinktag=$('.problems');
    let prblmlink=$(prblmlinktag).find('tr > td > div:nth-child(1) > a');
    // console.log(prblmlink);
    
    for (let j = 0; j < prblmlink.length; j++) {
        let nameis = 'https://codeforces.com'+$(prblmlink[j]).attr('href');
        // link.push(nameis);
        let name = $(prblmlink[j]).text().trim();
        // name=name.substr(2);
        console.log(name)
        let ch1=nameis.substr(42);
        let ch=nameis.charAt(nameis.length-1);
        if(!link.includes(ch1)){
            link.push(ch1);
            if(ch=='A'){
                if(!fs.existsSync("./Questions/A.json")){
                    fs.writeFileSync("./Questions/A.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/A.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    
                    fs.writeFileSync("./Questions/A.json", JSON.stringify(issues));
                }
            }
            else if(ch=='B'){
                if(!fs.existsSync("./Questions/B.json")){
                    fs.writeFileSync("./Questions/B.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/B.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/B.json", JSON.stringify(issues));
                }
            }
            else if(ch=='C'){
                if(!fs.existsSync("./Questions/C.json")){
                    fs.writeFileSync("./Questions/C.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/C.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/C.json", JSON.stringify(issues));
                }
            }
            else if(ch=='D'){
                if(!fs.existsSync("./Questions/D.json")){
                    fs.writeFileSync("./Questions/D.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/D.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/D.json", JSON.stringify(issues));
                }
            }
            else if(ch=='E'){
                if(!fs.existsSync("./Questions/E.json")){
                    fs.writeFileSync("./Questions/E.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/E.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/E.json", JSON.stringify(issues));
                }
            }
            else if(ch=='F'){
                if(!fs.existsSync("./Questions/F.json")){
                    fs.writeFileSync("./Questions/F.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/F.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/F.json", JSON.stringify(issues));
                }
            }
            else if(ch=='G'){
                if(!fs.existsSync("./Questions/G.json")){
                    fs.writeFileSync("./Questions/G.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/G.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/G.json", JSON.stringify(issues));
                }
            }
            else if(ch=='H'){
                if(!fs.existsSync("./Questions/H.json")){
                    fs.writeFileSync("./Questions/H.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/H.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/H.json", JSON.stringify(issues));
                }
            }
            else if(ch=='I'){
                if(!fs.existsSync("./Questions/I.json")){
                    fs.writeFileSync("./Questions/I.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/I.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/I.json", JSON.stringify(issues));
                }
            }
            else if(ch=='J'){
                if(!fs.existsSync("./Questions/J.json")){
                    fs.writeFileSync("./Questions/J.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/J.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/J.json", JSON.stringify(issues));
                }
            }
            else if(ch=='K'){
                if(!fs.existsSync("./Questions/K.json")){
                    fs.writeFileSync("./Questions/K.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
    
                }
                else{
                    let issues = JSON.parse(fs.readFileSync("./Questions/K.json"));
                    let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                    issues.push(newIssue);
                    fs.writeFileSync("./Questions/K.json", JSON.stringify(issues));
                }
            }
        }
        
            
    }
    //console.log(link);

}


    //console.log(link);
    let htmlmaker = function(){
        if(!fs.existsSync("./public")){
            fs.mkdirSync("./public");
        }
        if(!fs.existsSync("./public/allpages")){
            fs.mkdirSync("./public/allpages");
        }
        let htmlend = "</table></body></html>";

        function htmlmaker(atrribute){
            let data = `<!DOCTYPE html>
            <html >
            <head></head>
            </head>
            <style>
                table, th, td {
                  border: 1px solid black;
                  border-collapse: collapse;
                }
                th, td {
                  padding: 5px;
                  text-align: center;
                }
            </style>
            <body>
            <h1 style="text-align: center;font-size: 10ex;">${atrribute} - Tag - Quesions</h1>
                <table style="margin-left: auto; margin-right: auto;">
                    <tr>
                      <th style="text-align: left;">S.No</th>
                      <th>Problem Name</th>
                    </tr>`;
            let arr = require(`./Questions/${atrribute}.json`);
        for(let i = 0;i<arr.length;i++){
            data = data+`<tr><td>${i}</td>`+arr[i];
        }
         let htmla = data+htmlend;
        console.log(htmla);
        fs.writeFileSync(`./public/allpages/${atrribute}.html`,htmla);}
        
        htmlmaker("A");
        htmlmaker("B");
        htmlmaker("C");
        htmlmaker("D");
        htmlmaker('E');
        htmlmaker('F');
        htmlmaker('G');
        htmlmaker('H');
        htmlmaker('I');
        htmlmaker('J');
        htmlmaker('K');
        
        let index = `<!DOCTYPE html>
        <html>
        <head>
            <title>Codeforces</title>
        </head>
        <body style="margin-left: 20px;">
            <h1 style="text-align: center;font-size: 10ex;">CODEFORCES</h1>
            <h2 style="text-align: center;font-size: 10ex;">QUESTIONS TAG WISE</h2>
            <div style="text-align: center;">
                <button onclick="location.href='./allpages/A.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px; background-color: aqua;"><span style="font-size: 10ex;">A</span></button>
                <button onclick="location.href='./allpages/B.html'"style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(44, 236, 11); "><span style="font-size: 10ex;">B</span></button>
                <button onclick="location.href='./allpages/C.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(73, 76, 212);"><span style="font-size: 10ex;">C</span></button>
                <button onclick="location.href='./allpages/D.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(200, 56, 219);"><span style="font-size: 10ex;">D</span></button>
                <button onclick="location.href='./allpages/E.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgba(26, 218, 26, 0.829);"><span style="font-size: 10ex;">E</span></button>
                <button onclick="location.href='./allpages/F.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(235, 66, 80);"><span style="font-size: 10ex;">F</span></button>
                <button onclick="location.href='./allpages/G.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(241, 104, 12);"><span style="font-size: 10ex;">G</span></button>
                <button onclick="location.href='./allpages/H.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(255, 223, 43);"><span style="font-size: 10ex;">H</span></button>
                <button onclick="location.href='./allpages/I.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(62, 194, 161);"><span style="font-size: 10ex;">I</span></button>
                <button onclick="location.href='./allpages/J.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(0, 0, 0);color:white"><span style="font-size: 10ex;">J</span></button>
                <button onclick="location.href='./allpages/K.html'" style="width: 15em;height: 15em;margin-left: 20px;margin:20px;background-color: rgb(214, 56, 253);"><span style="font-size: 10ex;">K</span></button>
            </div>
        </body>
        </html>`
        fs.writeFileSync(`./public/index.html`,index);
        
        
        
    }



