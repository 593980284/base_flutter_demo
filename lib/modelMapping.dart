import './models/index.dart';

Map<String, Function> Models = {
  "St": (Map<String,dynamic> json){ return St.fromJson(json);},
  "Demo": (Map<String,dynamic> json){ return Demo.fromJson(json);},
  "Huchao": (Map<String,dynamic> json){ return Huchao.fromJson(json);},
  "Ss": (Map<String,dynamic> json){ return Ss.fromJson(json);},
  "My": (Map<String,dynamic> json){ return My.fromJson(json);},
  "User": (Map<String,dynamic> json){ return User.fromJson(json);},
  "Kkk": (Map<String,dynamic> json){ return Kkk.fromJson(json);},
  "Sw": (Map<String,dynamic> json){ return Sw.fromJson(json);},
};