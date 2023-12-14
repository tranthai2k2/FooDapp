import 'package:json_annotation/json_annotation.dart';

part 'OrderProcessor.g.dart';

@JsonSerializable(
  anyMap: true,
)

class OrderProcessorEntity {
  // final String? OrderProcessor;
  // id của đơn hàng
  final String? OrderProcessorEntityid;
  // toan gia
  final double? allprice;
// list của các món ăn và giá giá của chúng đối tượng bên trong sẽ là <id món ăn, int số lượng>
  final List<List<int>>? listOrderProcessor;
  OrderProcessorEntity({
    this.listOrderProcessor,
    this.allprice,
    this.OrderProcessorEntityid,
  });

  factory OrderProcessorEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderProcessorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProcessorEntityToJson(this);
}
