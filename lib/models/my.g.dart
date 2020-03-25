// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

My _$MyFromJson(Map<String, dynamic> json) {
  return My()
    ..name = json['name'] as String
    ..keywords = (json['keywords'] as List)?.map((e) => e as String)?.toList()
    ..age = json['age'] as num
    ..name2 = json['name2'] as String
    ..loved = json['+1'] as int;
}

Map<String, dynamic> _$MyToJson(My instance) => <String, dynamic>{
      'name': instance.name,
      'keywords': instance.keywords,
      'age': instance.age,
      'name2': instance.name2,
      '+1': instance.loved
    };
