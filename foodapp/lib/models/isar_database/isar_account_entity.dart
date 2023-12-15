import 'package:isar/isar.dart';

part 'isar_account_entity.g.dart';

@collection
class IsarAccountEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? firstName;
  final String? lastName;
  final String? uId;
  final String? passWord;
  final String? phoneNumber;
  final String? avatar;
  final String? address;

  IsarAccountEntity({
    this.firstName,
    this.lastName,
    this.uId,
    this.passWord,
    this.avatar,
    this.address,
    this.phoneNumber,
  });

  final isarAccountEntities = IsarLinks<IsarAccountEntity>();
}
