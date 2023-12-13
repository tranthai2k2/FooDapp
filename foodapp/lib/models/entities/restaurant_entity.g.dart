// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantEntity _$RestaurantEntityFromJson(Map json) => RestaurantEntity(
      name: json['name'] as String?,
      address: json['address'] as String?,
      listFood:
          (json['listFood'] as List<dynamic>?)?.map((e) => e as int).toList(),
      restaurantImage: json['restaurantImage'] as String?,
      restaurantDescription: json['restaurantDescription'] as String?,
      restaurantId: json['restaurantId'] as int?,
    );

Map<String, dynamic> _$RestaurantEntityToJson(RestaurantEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'listFood': instance.listFood,
      'restaurantImage': instance.restaurantImage,
      'restaurantDescription': instance.restaurantDescription,
      'restaurantId': instance.restaurantId,
    };
