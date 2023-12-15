import 'package:json_annotation/json_annotation.dart';

part 'callfood.g.dart';

@JsonSerializable(
  anyMap: true,
)
class callfoodEntity {
  final int? foodid;
  final int? quantityfood;
  final String? orderProcessorEntityId;
  final int? callfoodid;

  callfoodEntity({
    this.foodid,
    this.quantityfood,
    this.orderProcessorEntityId,
    this.callfoodid,
  });

  factory callfoodEntity.fromJson(Map<String, dynamic> json) =>
      _$callfoodEntityFromJson(json);

  Map<String, dynamic> toJson() => _$callfoodEntityToJson(this);
}
