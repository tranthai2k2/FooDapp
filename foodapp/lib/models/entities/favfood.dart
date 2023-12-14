import 'package:json_annotation/json_annotation.dart';

part 'favfood.g.dart';

@JsonSerializable(
  anyMap: true,
)

class FavFoodEntity {
  final String? favFoodId;
  List<int>? listFavFood; // Sửa kiểu dữ liệu ở đây
  FavFoodEntity({
    this.listFavFood,
    this.favFoodId,
  });

  factory FavFoodEntity.fromJson(Map<String, dynamic> json) =>
      _$FavFoodEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FavFoodEntityToJson(this);
}
