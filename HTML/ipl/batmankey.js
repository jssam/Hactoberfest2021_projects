let request = require("request");
let fs = require("fs");
let p = require("path");
let cheerio = require("cheerio");
let url = "https://www.espncricinfo.com/series/ipl-2020-21-1210595";
request(url, cb)

function cb(err, response, html) {
    if (err) {
        console.log(err);
    }
    etracthtml(html);
}
function etracthtml(html) {
    let $ = cheerio.load(html);
    let viewall = $(".widget-items > .label");
    let allare = "https://www.espncricinfo.com" + $(viewall).attr("href");
    request(allare, cb1)

    function cb1(err, response, html) {
        if (err) {
            console.log(err);
        }
        teams(html);
    }
}
function teams(html) {
    let $ = cheerio.load(html);
    let allteams = $(".match-score-block");
    fs.mkdir(".\\ipl", (err) => { });
    for (let i = 0; i < allteams.length; i++) {
        let teamname = $(allteams[i]).find(".match-score-block .name-detail > .name");
        for (let j = 0; j < teamname.length; j++) {
            let nameis = $(teamname[j]).text();
            fs.mkdir(".\\ipl\\" + nameis, (err) => { });
        }
        for (let j = 0; j < teamname.length; j++) {
            let nameis = $(teamname[j]).text();
            let link = $(allteams[i]).find(".match-info-link-FIXTURES");
            let fulllink = "https://www.espncricinfo.com" + $(link).attr("href");
            console.log(fulllink);
            if (j == 0) {
                let a = p.join(__dirname, "ipl", nameis)
                let s = function (a) {
                    request(fulllink, (err, response, html) => {
                        if (err) {
                            console.log(err);
                        }
                        forfirstteam(html, a);
                    })
                }
                s(a);
            } else if (j == 1) {
                let a = p.join(__dirname, "ipl", nameis)
                let s = function (a) {
                    request(fulllink, (err, response, html) => {
                        if (err) {
                            console.log(err);
                        }
                        forsecondteam(html, a);
                    })
                }
                s(a);

            }
        }
    }
}
function forfirstteam(html, path) {
    let $ = cheerio.load(html);
    let batsmantable = $(".table.batsman");
    let batsmanname = $(batsmantable[0]).find("tbody tr");
    for (let j = 0; j < batsmanname.length; j++) {
        let bname = $(batsmanname[j]).find(" a").text();
        let data = $(batsmanname[j]).find(" td");
        let run = $(data[2]).text();
        let balls = $(data[3]).text();
        let four = $(data[5]).text();
        let six = $(data[6]).text();
        let sr = $(data[7]).text();
        let jsonparser = {
            bname: bname,
            run: run,
            balls: balls,
            four: four,
            six: six,
            sr: sr
        }
        console.log(bname + "  " + run);
        let pathfile = p.join(path, bname + ".json")
        if (fs.existsSync(pathfile) == false) {
            // console.log(pathfile);
            let create = fs.createWriteStream(pathfile);
            let d = { "Data": [jsonparser] };
            let sam = async()=>{
                await   fs.writeFileSync(pathfile, JSON.stringify(d));
            }
            sam();
          
            create.end();


        } else {



            fs.readFile(pathfile, 'utf-8', function (err, data) {
                if (err) { console.log(err) }

                var arrayOfObjects = JSON.parse(data)
                arrayOfObjects.Data.push(jsonparser)
                fs.writeFile(pathfile, JSON.stringify(arrayOfObjects), 'utf-8', function (err) {
                    { console.log(err) }

                })


            })
        }

        // console.log(bname +" is of " );
    }
    console.log("``````````````````````````````");
}
function forsecondteam(html, path) {
    let $ = cheerio.load(html);
    let batsmantable = $(".table.batsman");
    let batsmanname = $(batsmantable[1]).find("tbody tr");
    for (let j = 0; j < batsmanname.length; j++) {
        let bname = $(batsmanname[j]).find(" a").text();
        let data = $(batsmanname[j]).find(" td");
        let run = $(data[2]).text();
        let balls = $(data[3]).text();
        let four = $(data[5]).text();
        let six = $(data[6]).text();
        let sr = $(data[7]).text();
        let jsonparser = {
            bname: bname,
            run: run,
            balls: balls,
            four: four,
            six: six,
            sr: sr
        }
        console.log(bname + "  " + run);
        let pathfile = p.join(path, bname + ".json")
        if (fs.existsSync(pathfile) == false) {
            // console.log(pathfile);
            let create = fs.createWriteStream(pathfile);
            let d = { "Data": [jsonparser] };
            fs.writeFileSync(pathfile, JSON.stringify(d));
            create.end();


        } else {



            fs.readFile(pathfile, 'utf-8', function (err, data) {
                if (err) { console.log(err) }

                var arrayOfObjects = JSON.parse(data)
                arrayOfObjects.Data.push(jsonparser)
                fs.writeFile(pathfile, JSON.stringify(arrayOfObjects), 'utf-8', function (err) {
                    { console.log(err) }

                })


            })
        }

        // console.log(bname +" is of " );
    }
    console.log("``````````````````````````````");
}
