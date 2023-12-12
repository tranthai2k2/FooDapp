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

List<UserEntity> listUser = [
  UserEntity(
    id: "1",
    avatar:
        "https://images.unsplash.com/photo-1624561172888-ac93c696e10c?q=80&w=1289&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    fullName: "Athalia Putri",
    lastMessage: "Good morning, did you sleep well?",
    lastTimeOnline: "02-12-2023",
    status: true,
    mustReadMessageNumber: 1,
  ),
  UserEntity(
    id: "2",
    avatar: "",
    fullName: "Raki Devon",
    lastMessage: "How is it going?",
    lastTimeOnline: "02-12-2023",
    status: false,
    mustReadMessageNumber: 0,
  ),
  UserEntity(
    id: "3",
    avatar:
        "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njh8fGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D",
    fullName: "Erlan Sadewa",
    lastMessage: "Aight, noted",
    lastTimeOnline: "02-12-2023",
    status: false,
    mustReadMessageNumber: 1,
  ),
];
