class Validator {
  static bool isValidUsername(String name) {
    return name.length >= 6;
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    RegExp phoneRegex = RegExp(r'^[0-9]{10}$');
    return phoneRegex.hasMatch(phoneNumber);
  }

  static bool isValidEmail(String email) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool isValidPassword(String pass) {
    return pass.length >= 6;
  }
}
