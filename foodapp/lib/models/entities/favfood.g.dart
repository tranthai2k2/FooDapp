// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favfood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavFoodEntity _$FavFoodEntityFromJson(Map json) => FavFoodEntity(
      listFavFood: (json['listFavFood'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      favFoodId: json['favFoodId'] as String?,
    );

Map<String, dynamic> _$FavFoodEntityToJson(FavFoodEntity instance) =>
    <String, dynamic>{
      'favFoodId': instance.favFoodId,
      'listFavFood': instance.listFavFood,
    };
