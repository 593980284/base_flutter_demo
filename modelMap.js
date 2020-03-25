
var fs = require('fs');
var join = require('path').join;
 
function getJsonFiles(jsonPath){
    let jsonFiles = [];
    function findJsonFile(path){
         jsonFiles = fs.readdirSync(path);
        // files.forEach(function (item, index) {
        //     let fPath = join(path,item);
        //     let stat = fs.statSync(fPath);
        //     if(stat.isDirectory() === true) {
        //         findJsonFile(fPath);
        //     }
        //     if (stat.isFile() === true) { 
        //       jsonFiles.push(fPath);
        //     }
        // });
    }
    findJsonFile(jsonPath);
   return jsonFiles;
}

function main(){
let content = "import './models/index.dart';\nMap<String, Function> Models = {\n"
   getJsonFiles("jsons").forEach((item)=>{
     let s = item.split(".")[0];
     let f = s.slice(0,1).toUpperCase();
     s = s.slice(1,s.length);
     s = f+s;
     content+=`\"${s}\": (json)=>{${s}.fromJson(json)},\n`;
  });
  content+="};"
console.log(content);
  writeFile(content);
}
// /Users/huchao/Desktop/base_flutter/lib/modelMapping.dart

function writeFile(content){
    fs.writeFile('./lib/sss.md', content, function (error) {
        if (error) {
          console.log('写入失败')
        } else {
          console.log('写入成功了')
        }
      })
}

main();
 
