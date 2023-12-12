import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodapp/validator/singup_validator.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String username,
    String phoneNumber,
  ) async {
    try {
      if (!Validator.isValidUsername(username)) {
        throw Exception('Tên đăng nhập không hợp lệ');
      }

      if (!Validator.isValidPhoneNumber(phoneNumber)) {
        throw Exception('Số điện thoại không hợp lệ');
      }

      if (!Validator.isValidEmail(email)) {
        throw Exception('Email không hợp lệ');
      }

      if (!Validator.isValidPassword(password)) {
        throw Exception('Mật khẩu phải ít nhất 6 ký tự');
      }
      // Đăng ký người dùng trong Firebase Authentication
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Lưu thông tin người dùng vào Firestore sau khi đăng ký thành công
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'username': username,
        'phoneNumber': phoneNumber,
        // Thêm các trường thông tin khác cần lưu trữ vào đây
      });
    } catch (e) {
      print('Đăng ký thất bại: $e');
      throw e;
    }
  }
}
