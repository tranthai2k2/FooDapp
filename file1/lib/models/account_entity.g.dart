// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountEntity _$AccountEntityFromJson(Map<String, dynamic> json) =>
    AccountEntity(
      id: json['id'] as String?,
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as int?,
      passWord: json['passWord'] as String?,
      age: json['age'] as String?,
      avatarURL: json['avatarURL'] as String?,
      location: json['location'] as String?,
      lat: json['lat'] as String?,
      long: json['long'] as String?,
    );

Map<String, dynamic> _$AccountEntityToJson(AccountEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'avatarURL': instance.avatarURL,
      'gender': instance.gender,
      'fullName': instance.fullName,
      'passWord': instance.passWord,
      'age': instance.age,
      'location': instance.location,
      'lat': instance.lat,
      'long': instance.long,
    };
