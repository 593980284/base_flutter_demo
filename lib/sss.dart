import './modelMapping.dart';
import './models/index.dart';
import './netManager.dart';
import './userApi.dart';

void main() {
  NetRequest<List<My>>(USERPAI_login).then((data) {
    print(data[0].name);
  }).catchError((NetError e) {
    print(e.code.toString() + e.msg);
  });

  NetRequest<My>(USERPAI_login, params: {"key": "value"}).then((data) {
    print(data.name);
  }).catchError((NetError e) {
    print(e.code.toString() + e.msg);
  });
  // String a = "1111";
  // a = a + '2';
  // if(a == "11112"){
  //   print("222222");
  // }
  // getData();
  // data["key"]
}

getData<T>() {
  if (T.toString().contains("List<")) {
    print(T.toString().replaceAll("List<", "").replaceAll(">", ""));
  }
  print(T.toString());
}
