import 'package:json_annotation/json_annotation.dart';
import "my.dart";
import "sw.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
    User();

    String name;
    User father;
    List<User> friends;
    List<String> keywords;
    num age;
    String name2;
    @JsonKey(name: '+1') int loved;
    List<My> users;
    @JsonKey(ignore: true) dynamic md;
    Sw sww;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}
