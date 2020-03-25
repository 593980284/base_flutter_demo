import './modelMapping.dart';
import './models/index.dart';
import './netManager.dart';
import './userApi.dart';

void main(){
  // NetRequest<List<My>>(USERPAI_login).then((data){
  //   data[0].name;
  // }).catchError((NetError e){
  //   e.code;
  // });

  //  NetRequest<My>(USERPAI_login).then((data){
  //   data.name;
  // }).catchError((NetError e){
  //   e.msg;
  // });
  getData();
}

getData<T>(){
  if(T.toString().contains("List<")){
    print(T.toString().replaceAll("List<", "").replaceAll(">", ""));
  }
  print(T.toString());
}