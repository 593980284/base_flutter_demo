import 'package:json_annotation/json_annotation.dart';

part 'sw.g.dart';

@JsonSerializable()
class Sw {
    Sw();

    String name;
    
    factory Sw.fromJson(Map<String,dynamic> json) => _$SwFromJson(json);
    Map<String, dynamic> toJson() => _$SwToJson(this);
}
