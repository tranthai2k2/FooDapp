class StringHelper {
  static String getFirstName(String fullName) {
    String shortName = "";
    if (fullName.isNotEmpty) {
      final listName = fullName.split(" ");

      for (int i = 0; i < listName.length; i++) {
        if (listName[i].isNotEmpty) {
          shortName = shortName + listName[i][0];
        }
      }
    }

    return shortName;
  }
}
