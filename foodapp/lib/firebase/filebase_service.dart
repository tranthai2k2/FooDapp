import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodapp/validator/validations.dart';

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

      // Kiểm tra xem email đã tồn tại hay chưa
      final existingEmail = await _auth.fetchSignInMethodsForEmail(email);
      if (existingEmail.isNotEmpty) {
        throw Exception('Email đã tồn tại');
      }

      // Kiểm tra xem username đã tồn tại hay chưa
      final existingUsername = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .get();
      if (existingUsername.docs.isNotEmpty) {
        throw Exception('Tên người dùng đã tồn tại');
      }

      // Kiểm tra xem số điện thoại đã tồn tại hay chưa
      final existingPhone = await _firestore
          .collection('users')
          .where('phoneNumber', isEqualTo: phoneNumber)
          .get();
      if (existingPhone.docs.isNotEmpty) {
        throw Exception('Số điện thoại đã tồn tại');
      }

      // Đăng ký nếu thông tin hợp lệ và không bị trùng lặp
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Lưu thông tin người dùng vào Firestore
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'username': username,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password,
      });
    } catch (e) {
      print('Đăng ký thất bại: $e');
      throw e;
    }
  }
}
