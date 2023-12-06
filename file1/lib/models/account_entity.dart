import 'package:json_annotation/json_annotation.dart';

part 'account_entity.g.dart';

@JsonSerializable()
class AccountEntity {
  @JsonKey()
  String? id;

  @JsonKey()
  String? email;

  @JsonKey()
  String? phone;

  @JsonKey()
  String? avatarURL;

  @JsonKey()
  int? gender;

  @JsonKey()
  String? fullName;

  @JsonKey()
  String? passWord;

  @JsonKey()
  String? age;

  @JsonKey()
  String? location;

  @JsonKey()
  String? lat;

  @JsonKey()
  String? long;

  AccountEntity({
    this.id,
    this.email,
    this.fullName,
    this.phone,
    this.gender,
    this.passWord,
    this.age,
    this.avatarURL,
    this.location,
    this.lat,
    this.long,
  });

  AccountEntity.fromData(Map<String, dynamic> data)
      : id = data['id'],
        email = data['email'],
        phone = data['phone'],
        fullName = data['fullName'],
        avatarURL = data['avatarURL'],
        gender = data['gender'],
        passWord = data['passWord'],
        age = data['age'],
        location = data['location'],
        lat = data['lat'],
        long = data['long'];

  factory AccountEntity.fromJson(Map<String, dynamic> json) =>
      _$AccountEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AccountEntityToJson(this);
}
