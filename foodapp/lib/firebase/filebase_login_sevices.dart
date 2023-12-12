import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> signInWithUsernameAndPassword(
      String username, String password) async {
    try {
      // Kiểm tra xem người dùng có tồn tại không trong Firestore
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Người dùng tồn tại trong Firestore
        // Lấy thông tin người dùng
        final userDoc = querySnapshot.docs.first;
        final savedPassword = userDoc['password']; // Lấy mật khẩu đã lưu

        // Xác thực người dùng bằng email và mật khẩu
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: username, // Sử dụng username làm email để đăng nhập
          password: password,
        );

        // Kiểm tra mật khẩu người dùng nhập vào có khớp với mật khẩu đã lưu không
        if (savedPassword == password && userCredential.user != null) {
          // Username và mật khẩu khớp và người dùng đã đăng nhập thành công
          return true;
        }
      }
    } catch (e) {
      print('Lỗi khi kiểm tra và đăng nhập: $e');
    }

    return false;
  }
}
