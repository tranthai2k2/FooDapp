// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['fullName'] as String?,
      lastMessage: json['lastMessage'] as String?,
      lastTimeOnline: json['lastTimeOnline'] as String?,
      mustReadMessageNumber: json['mustReadMessageNumber'] as int?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'fullName': instance.fullName,
      'lastMessage': instance.lastMessage,
      'lastTimeOnline': instance.lastTimeOnline,
      'mustReadMessageNumber': instance.mustReadMessageNumber,
      'status': instance.status,
    };
