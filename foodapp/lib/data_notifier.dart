import 'package:flutter/foundation.dart';

class DataNotifier with ChangeNotifier {
  String searchData = '';

  void setSearchData(String data) {
    searchData = data;
    notifyListeners();
  }
}
