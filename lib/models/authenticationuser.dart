import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthUser {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUpWithEmailAndPassword(String curp, String password) async {
    final nameUser = '${curp.toLowerCase()}@user.com';
    try {
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: nameUser,
        password: password,
      );
      await _firestore.collection('users').doc(cred.user!.uid).set({
        'email': nameUser,
        'password': password,
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
