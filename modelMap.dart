import 'dart:io';
import 'dart:async';
import 'package:args/command_runner.dart';
import 'package:logging/logging.dart';

main(){
  //var directory = await new Directory("dir${Platform.pathSeparator}one").create(recursive: true);
 handleFile();

}

handleFile() async {
  File file = new File("./lib/modelMapping.dart");
    if(!await file.exists()) {
    //创建文件
    file = await file.create();
  }
  Directory directory = Directory('./jsons');
  List<FileSystemEntity> l = directory.listSync();
  List<String> ss =[];
  String content = "import './models/index.dart';\n\nMap<String, Function> Models = {\n";
  l.forEach((FileSystemEntity item){
    String name = item.path.split("/").last.split(".")[0];
    name = name.substring(0,1).toUpperCase() + name.substring(1,name.length);
       content+='  \"'+ name +'\": (Map<String,dynamic> json){ return '+name+'.fromJson(json);},\n';
  });
   content+="};";
   file.writeAsString(content).then((d){
     print('写入成功');
   });
}

