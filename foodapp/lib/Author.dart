import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'models/entities/authenticate_entity.dart';
import 'services/fire_storage_service.dart';
class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FireStorageService _fireStoreService = FireStorageService();

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
    required String passWord,
    String? firstName,
    String? phoneNumber,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: passWord,
      );
      // create a new user profile on FireStore

      _currentUser = AccountEntity(
        uId: authResult.user?.uid,
        email: email,
        firstName: firstName,
        phoneNumber: phoneNumber,
        passWord: passWord,
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