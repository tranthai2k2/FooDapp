import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';
// khởi tạo các user ảo
@JsonSerializable()
class UserEntity {
  final String? id;
  final String? avatar;
  final String? fullName;
  final String? lastMessage;
  final String? lastTimeOnline;
  final int? mustReadMessageNumber;
  final bool? status;

  UserEntity({
    this.id,
    this.avatar,
    this.fullName,
    this.lastMessage,
    this.lastTimeOnline,
    this.mustReadMessageNumber,
    this.status,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}

