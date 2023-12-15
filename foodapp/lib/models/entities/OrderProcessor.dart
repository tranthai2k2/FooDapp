import 'package:json_annotation/json_annotation.dart';

part 'OrderProcessor.g.dart';

@JsonSerializable(
  anyMap: true,
)

class OrderProcessorEntity {
  // id của đơn hàng gợi ý là lấy gias trị của userid nối với toàn giá
  final String? OrderProcessorEntityid;
  final String? userid;
  List<int>? listcallFood; // Sửa kiểu dữ liệu ở đây
  // toan gia
  final double? allprice;
// list của các món ăn và giá giá của chúng đối tượng bên trong sẽ là <id món ăn, int số lượng>
  final List<List<int>>? listOrderProcessor;
  OrderProcessorEntity({
    this.userid,
    this.listOrderProcessor,
    this.listcallFood,
    this.allprice,
    this.OrderProcessorEntityid,
  });

  factory OrderProcessorEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderProcessorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProcessorEntityToJson(this);
}
