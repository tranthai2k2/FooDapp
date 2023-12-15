// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderProcessor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProcessorEntity _$OrderProcessorEntityFromJson(Map json) =>
    OrderProcessorEntity(
      userid: json['userid'] as String?,
      listOrderProcessor: (json['listOrderProcessor'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
      listcallFood: (json['listcallFood'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      allprice: (json['allprice'] as num?)?.toDouble(),
      OrderProcessorEntityid: json['OrderProcessorEntityid'] as String?,
    );

Map<String, dynamic> _$OrderProcessorEntityToJson(
        OrderProcessorEntity instance) =>
    <String, dynamic>{
      'OrderProcessorEntityid': instance.OrderProcessorEntityid,
      'userid': instance.userid,
      'listcallFood': instance.listcallFood,
      'allprice': instance.allprice,
      'listOrderProcessor': instance.listOrderProcessor,
    };
