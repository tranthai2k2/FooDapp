// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costfood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CostFood _$CostFoodFromJson(Map json) => CostFood(
      foodid: json['foodid'] as int?,
      foodprice: (json['foodprice'] as num?)?.toDouble(),
      foodname: json['foodname'] as String?,
    );

Map<String, dynamic> _$CostFoodToJson(CostFood instance) => <String, dynamic>{
      'foodid': instance.foodid,
      'foodprice': instance.foodprice,
      'foodname': instance.foodname,
    };
