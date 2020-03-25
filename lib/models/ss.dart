import 'package:json_annotation/json_annotation.dart';

part 'ss.g.dart';

@JsonSerializable()
class Ss {
    Ss();

    String name;
    List<String> keywords;
    num age;
    String name2;
    @JsonKey(name: '+1') int loved;
    
    factory Ss.fromJson(Map<String,dynamic> json) => _$SsFromJson(json);
    Map<String, dynamic> toJson() => _$SsToJson(this);
}
