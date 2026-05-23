import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgot.dart';
import 'package:flutter_application_1/home.dart';

Future<void> Register(
  String username,
  String email,
  String password,
  BuildContext context,
) async {
  UserCredential userCredential = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);
  await FirebaseFirestore.instance
      .collection("datas")
      .doc(userCredential.user?.uid)
      .set({"name": username, "email": email});
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text("user create succefully")));
}

Future<void> login(String email, String password, BuildContext context) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text("login succesfully")));
  Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget()));
}

Future<void> forgot(String email, BuildContext context) async {
  await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text("chek ur inbox")));
}
