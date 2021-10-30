const fs=require("fs");
const cheerio=require("cheerio");
const request= require("request");

let url="https://codeforces.com/problemset";

request(url,cb);

function cb(error,response,body){
    parseData(body);
    // console.log(body);
}

function parseData(html){
    let $=cheerio.load(html+"");
    // console.log($.html());
    let prblmlinktag=$('.problems');
    let prblmlink=$(prblmlinktag).find('tr>td>a');
    // console.log(prblmlink);
    let link = [];
    for (let j = 0; j < prblmlink.length; j =j+2) {
        let nameis = `https://codeforces.com`+$(prblmlink[j]).attr('href');
        link.push(nameis);
    }
    console.log(link.length);

    
    // let prblm=ch(prblmlinktag).attr("href");

}
