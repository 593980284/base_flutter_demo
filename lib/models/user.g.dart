// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..name = json['name'] as String
    ..father = json['father'] == null
        ? null
        : User.fromJson(json['father'] as Map<String, dynamic>)
    ..friends = (json['friends'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..keywords = (json['keywords'] as List)?.map((e) => e as String)?.toList()
    ..age = json['age'] as num
    ..name2 = json['name2'] as String
    ..loved = json['+1'] as int
    ..users = (json['users'] as List)
        ?.map((e) => e == null ? null : My.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..sww = json['sww'] == null
        ? null
        : Sw.fromJson(json['sww'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'father': instance.father,
      'friends': instance.friends,
      'keywords': instance.keywords,
      'age': instance.age,
      'name2': instance.name2,
      '+1': instance.loved,
      'users': instance.users,
      'sww': instance.sww
    };
