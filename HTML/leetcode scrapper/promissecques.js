  const fs = require("fs");
const cheerio = require("cheerio");
const request = require("request");


let linkcode = [];
let codeforce = "https://codeforces.com/problemset/page/";

function promisifiedrequest(codeforce) {
    //  pending state promise
    return new Promise(function (resolve, reject) {
        request(codeforce, function cb(err, sada, data) {
            if (err) {
                // reject -> work fail
                reject(err);
            } else {
                // resolve -> work complete
                resolve(data)
                // console.log("data->" + );
            }
        });
    });
}





// let getcontent = async function () {
   let getcontent = async function () {
        //  pending state promise
        return new Promise(function (resolve, reject) {
    for (let i = 1; i <= 69; i++) {
        let requestPromise = promisifiedrequest(codeforce + i);
        await requestPromise
            .then(function (html) {
                let $ = cheerio.load(html + "");
                // console.log($.html());
                let prblmlinktag = $('.problems');
                let prblmlink = $(prblmlinktag).find('tr > td > div:nth-child(1) > a');
                // console.log(prblmlink);

                for (let j = 0; j < prblmlink.length; j++) {
                    let nameis = 'https://codeforces.com' + $(prblmlink[j]).attr('href');
                    // link.push(nameis);
                    let name = $(prblmlink[j]).text().trim();
                    // name=name.substr(2);
                    // console.log(name)
                    let ch1 = nameis.substr(42);
                    let ch = nameis.charAt(nameis.length - 1);
                    if (!linkcode.includes(ch1)) {
                        linkcode.push(ch1);
                        if (ch == 'A') {
                            if (!fs.existsSync("./Questions/A.json")) {
                                fs.writeFileSync("./Questions/A.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));
                                A.push(`<td><a target="_blank" href=${nameis}>${name}</a></td>`)

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/A.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                A.push(newIssue);

                                fs.writeFileSync("./Questions/A.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'B') {
                            if (!fs.existsSync("./Questions/B.json")) {
                                fs.writeFileSync("./Questions/B.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/B.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/B.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'C') {
                            if (!fs.existsSync("./Questions/C.json")) {
                                fs.writeFileSync("./Questions/C.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/C.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/C.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'D') {
                            if (!fs.existsSync("./Questions/D.json")) {
                                fs.writeFileSync("./Questions/D.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/D.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/D.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'E') {
                            if (!fs.existsSync("./Questions/E.json")) {
                                fs.writeFileSync("./Questions/E.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/E.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/E.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'F') {
                            if (!fs.existsSync("./Questions/F.json")) {
                                fs.writeFileSync("./Questions/F.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/F.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/F.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'G') {
                            if (!fs.existsSync("./Questions/G.json")) {
                                fs.writeFileSync("./Questions/G.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/G.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/G.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'H') {
                            if (!fs.existsSync("./Questions/H.json")) {
                                fs.writeFileSync("./Questions/H.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/H.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/H.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'I') {
                            if (!fs.existsSync("./Questions/I.json")) {
                                fs.writeFileSync("./Questions/I.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/I.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/I.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'J') {
                            if (!fs.existsSync("./Questions/J.json")) {
                                fs.writeFileSync("./Questions/J.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/J.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/J.json", JSON.stringify(issues));
                            }
                        }
                        else if (ch == 'K') {
                            if (!fs.existsSync("./Questions/K.json")) {
                                fs.writeFileSync("./Questions/K.json", JSON.stringify([`<td><a target="_blank" href=${nameis}>${name}</a></td>`]));

                            }
                            else {
                                let issues = JSON.parse(fs.readFileSync("./Questions/K.json"));
                                let newIssue = `<td><a target="_blank" href=${nameis}>${name}</a></td>`
                                issues.push(newIssue);
                                fs.writeFileSync("./Questions/K.json", JSON.stringify(issues));
                            }
                        }
                    }
                }
            })
    }})}

    
let a = getcontent().then()
a.then(function(){sanyam();})
// }

// let htmlmaker = async function(){
    function sanyam() {
        //  pending state promise
        return new Promise(function (resolve, reject) {
let htmlstart = `"<html ><head></head><style>table, th, td {border: 1px solid black;border-collapse: collapse;}th, td {padding: 5px;text-align: center;}</style><body><table style="margin-left: auto; margin-right: auto;"><tr><th style="text-align: left;">S.No</th><th>Problem Name</th></tr>"`;
let htmlend = "</table></body></html>";
// let arr = require('./Questions/A.json');
let arr = A;
for(let i = 0;i<arr.length;i++){
    htmlstart = htmlstart+`<tr><td>${i}</td>`+arr[i];
}
 let html = htmlstart+htmlend;
console.log(html);
fs.writeFile("abc.html",html,(err)=>{});
})}
return sanyam();
// }

// let hello = async function(){
//     await getcontent();
//      await htmlmaker();
// }

// hello();
