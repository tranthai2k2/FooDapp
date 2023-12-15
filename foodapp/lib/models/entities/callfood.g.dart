// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callfood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

callfoodEntity _$callfoodEntityFromJson(Map json) => callfoodEntity(
      foodid: json['foodid'] as int?,
      quantityfood: json['quantityfood'] as int?,
      userid: json['userid'] as String?,
      callfoodid: json['callfoodid'] as int?,
    );

Map<String, dynamic> _$callfoodEntityToJson(callfoodEntity instance) =>
    <String, dynamic>{
      'foodid': instance.foodid,
      'quantityfood': instance.quantityfood,
      'userid': instance.userid,
      'callfoodid': instance.callfoodid,
    };
