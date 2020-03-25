import 'package:json_annotation/json_annotation.dart';

part 'kkk.g.dart';

@JsonSerializable()
class Kkk {
    Kkk();

    String name;
    
    factory Kkk.fromJson(Map<String,dynamic> json) => _$KkkFromJson(json);
    Map<String, dynamic> toJson() => _$KkkToJson(this);
}
