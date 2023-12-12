import 'package:foodapp/models/isar_database/isar_account_entity.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
// có liên quan đến xóa
class IsarService {
  late Future<Isar> database;

  IsarService() {
    database = openIsar();
  }

  Future<Isar> openIsar() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [
          IsarAccountEntitySchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<bool> saveAccount(IsarAccountEntity account) async {
    try {
      final isar = await database;
      isar.writeTxnSync<int>(
            () => isar.isarAccountEntitys.putSync(account),
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<IsarAccountEntity>> getAccount() async {
    final isar = await database;

    final result = await isar.isarAccountEntitys.where().findAll();
    return result;
  }

  Future<bool> deleteAccount(IsarAccountEntity account) async {
    try {
      final isar = await database;
      await isar.writeTxn(() async {
        await isar.isarAccountEntitys.delete(account.id);
      });

      return true;
    } catch (e) {
      return false;
    }
  }
}
