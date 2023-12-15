import 'package:json_annotation/json_annotation.dart';

part 'costfood.g.dart';

@JsonSerializable(anyMap: true)
class CostFood {
  final int? foodid;
  final double? foodprice;
  final String? foodname;

  CostFood({
    this.foodid,
    this.foodprice,
    this.foodname,
  });

  factory CostFood.fromJson(Map<String, dynamic> json) =>
      _$CostFoodFromJson(json);

  Map<String, dynamic> toJson() => _$CostFoodToJson(this);
}
