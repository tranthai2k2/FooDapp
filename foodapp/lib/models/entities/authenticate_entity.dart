import 'package:json_annotation/json_annotation.dart';

part 'authenticate_entity.g.dart';
// khởi tạo các kiểu dữ liệu dành cho đăng nhâập
@JsonSerializable()
class AccountEntity {
  @JsonKey()
  final String? firstName;
  @JsonKey()
  final List<String>? orderfoodIdlist;
  @JsonKey()
  final String? lastName;
  @JsonKey()
  final String? uId;
  @JsonKey()
  final String? phoneNumber;
  @JsonKey()
  final String? passWord;
  @JsonKey()
  final String? email;
  @JsonKey()
  final String? avatar;
  @JsonKey()
  final String? address;
  @JsonKey()
  final String? favFoodId;
  AccountEntity({
    this.favFoodId,
    this.email,
    this.firstName,
    this.lastName,
    this.uId,
    this.passWord,
    this.avatar,
    this.orderfoodIdlist,
    this.address,
    this.phoneNumber,
  });

  factory AccountEntity.fromJson(Map<String, dynamic> json) =>
      _$AccountEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AccountEntityToJson(this);
}
