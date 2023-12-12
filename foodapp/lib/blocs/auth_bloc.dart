import 'dart:async';

import 'package:foodapp/validator/validations.dart';

class AuthBloc {
  StreamController nameController = new StreamController();
  StreamController passController = new StreamController();
  StreamController phoneController = new StreamController();
  StreamController emailController = new StreamController();

  Stream get nameStreams => nameController.stream;
  Stream get passStreams => passController.stream;
  Stream get phoneStreams => phoneController.stream;
  Stream get emailStreams => emailController.stream;

  bool isValid(String name, String email, String pass, String phone) {
    if (!Validator.isValidUsername(name)) {
      nameController.sink.addError("Tên không hợp lệ");
      return false;
    }
    nameController.sink.add("");

    if (!Validator.isValidPhoneNumber(phone)) {
      phoneController.sink.addError("Số điện thoại không hợp lệ");
      return false;
    }
    phoneController.sink.add("");

    if (!Validator.isValidEmail(email)) {
      emailController.sink.addError("Email không hợp lệ");
      return false;
    }
    emailController.sink.add("");

    if (!Validator.isValidPassword(pass)) {
      passController.sink.addError("Mật khẩu không hợp lệ");
      return false;
    }
    passController.sink.add("");

    return true;
  }

  void dispose() {
    nameController.close();
    emailController.close();
    passController.close();
    phoneController.close();
  }
}
