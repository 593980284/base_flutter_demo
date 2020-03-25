import 'package:json_annotation/json_annotation.dart';

part 'st.g.dart';

@JsonSerializable()
class St {
    St();

    String name;
    
    factory St.fromJson(Map<String,dynamic> json) => _$StFromJson(json);
    Map<String, dynamic> toJson() => _$StToJson(this);
}
