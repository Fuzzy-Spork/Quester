// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    level: json['level'] as int,
    totalXP: json['totalXP'] as int,
    xpToNextLevel: json['xpToNextLevel'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'xpToNextLevel': instance.xpToNextLevel,
      'totalXP': instance.totalXP,
    };
