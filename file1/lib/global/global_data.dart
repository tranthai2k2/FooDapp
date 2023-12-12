
import '../models/account_entity.dart';

class GlobalData {
  GlobalData._privateConstructor();
  static final GlobalData instance = GlobalData._privateConstructor();

  AccountEntity? currentUser;
}
