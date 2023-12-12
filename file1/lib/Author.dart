
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'fire_store_service.dart';
import 'global/global_data.dart';
import 'models/account_entity.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FireStoreService _fireStoreService = FireStoreService();

  late AccountEntity _currentUser;

  Future loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      var authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _populateCurrentUser(authResult.user);
      debugPrint("Da login with user: ${authResult.user?.email ?? ""}");
      return authResult.user != null;
    } catch (e) {
      debugPrint("$e");
    }
  }

  Future signUpWithEmail({
    required String email,
    required String password,
    String? fullName,
    String? phone,
    int? gender,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // create a new user profile on FireStore

      _currentUser = AccountEntity(
        id: authResult.user?.uid,
        email: email,
        fullName: fullName,
        phone: phone,
        gender: gender,
        passWord: password,
      );

      await _fireStoreService.createUser(_currentUser);

      return authResult.user != null;
    } catch (e) {
      debugPrint("$e");
    }
  }

  Future<bool> isUserLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    if (user != null) {
      await _populateCurrentUser(user);
    }
    return user != null;
  }

  Future _populateCurrentUser(User? user) async {
    if (user != null) {
      // final userInfo = await _fireStoreService.getUser(uid: user.uid);
      // if (userInfo != null) {
      //   _currentUser = userInfo;
      // }
      // GlobalData.instance.accountEntity = _currentUser;
    }
  }

  void logOut() {
    _firebaseAuth.signOut();
  }
}
