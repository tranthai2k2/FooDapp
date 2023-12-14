// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountEntity _$AccountEntityFromJson(Map<String, dynamic> json) =>
    AccountEntity(
      favFoodId: json['favFoodId'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      uId: json['uId'] as String?,
      passWord: json['passWord'] as String?,
      avatar: json['avatar'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$AccountEntityToJson(AccountEntity instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'uId': instance.uId,
      'phoneNumber': instance.phoneNumber,
      'passWord': instance.passWord,
      'email': instance.email,
      'avatar': instance.avatar,
      'address': instance.address,
      'favFoodId': instance.favFoodId,
    };
