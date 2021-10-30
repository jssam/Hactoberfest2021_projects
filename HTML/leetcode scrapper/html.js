let fs = require("fs");
if(!fs.existsSync("./public")){
    fs.mkdirSync("./public");
}
if(!fs.existsSync("./public/allpages")){
    fs.mkdirSync("./public/allpages");
}
let htmlstart = `"<html ><head></head><style>table, th, td {border: 1px solid black;border-collapse: collapse;}th, td {padding: 5px;text-align: center;}</style><body><table style="margin-left: auto; margin-right: auto;"><tr><th style="text-align: left;">S.No</th><th>Problem Name</th></tr>"`;
let htmlend = "</table></body></html>";




function htmlmaker(data,atrribute){
    let arr = require(`./Questions/${atrribute}.json`);
for(let i = 0;i<arr.length;i++){
    data = data+`<tr><td>${i}</td>`+arr[i];
}
 let htmla = data+htmlend;
console.log(htmla);
fs.writeFileSync(`./public/allpages/${atrribute}.html`,htmla);}

htmlmaker(htmlstart,"A");
htmlmaker(htmlstart,"B");
htmlmaker(htmlstart,"C");
htmlmaker(htmlstart,"D");
htmlmaker(htmlstart,'E');
htmlmaker(htmlstart,'F');
htmlmaker(htmlstart,'G');
htmlmaker(htmlstart,'H');
htmlmaker(htmlstart,'I');
htmlmaker(htmlstart,'J');
htmlmaker(htmlstart,'K');

let index = `<!DOCTYPE html>
<html>
<head>
    <title>Codeforces</title>
</head>
<body style="margin-left: 20px;">
    <h1 style="text-align: center;font-size: 10ex;">CODEFORCES</h1>
    <h2 style="text-align: center;font-size: 10ex;">QUESTIONS Tag Wise</h2>
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


