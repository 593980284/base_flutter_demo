import 'package:json_annotation/json_annotation.dart';

part 'huchao.g.dart';

@JsonSerializable()
class Huchao {
    Huchao();

    String name;
    
    factory Huchao.fromJson(Map<String,dynamic> json) => _$HuchaoFromJson(json);
    Map<String, dynamic> toJson() => _$HuchaoToJson(this);
}
