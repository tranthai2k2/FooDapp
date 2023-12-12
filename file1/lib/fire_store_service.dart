import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import 'models/account_entity.dart';

class FireStoreService {
  final CollectionReference _usersCollectionReference =
  FirebaseFirestore.instance.collection('user');

  Future createUser(AccountEntity user) async {
    try {
      await _usersCollectionReference.doc(user.id).set(user.toJson());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }

      return e.toString();
    }
  }}
