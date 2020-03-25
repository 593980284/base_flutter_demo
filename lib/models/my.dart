import 'package:json_annotation/json_annotation.dart';

part 'my.g.dart';

@JsonSerializable()
class My {
    My();

    String name;
    List<String> keywords;
    num age;
    String name2;
    @JsonKey(name: '+1') int loved;
    
    factory My.fromJson(Map<String,dynamic> json) => _$MyFromJson(json);
    Map<String, dynamic> toJson() => _$MyToJson(this);
}
