// ignore_for_file: unused_field, unnecessary_overrides, unused_element, avoid_print, prefer_const_constructors, empty_catches

import 'package:bmi/Screens/splash_screen.dart';
import 'package:bmi/network/test_login.dart';
import 'package:bmi/network/test_signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

//AuthController
class AuthController extends GetxController {
  //with instance AuthController would be able to the app everywhere
  static AuthController instance = Get.find();
  late Rx<User?> _user; //Name,email,password......
  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void onReady() {
    super.onReady();

    _user = Rx<User?>(auth.currentUser);
    //out user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => SignUpPage());
    }
  }

  void register(String name, String email, password) async {
    try {
      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      db.collection("user").doc(user.user!.uid).set({
        "name": name,
        "email": email,
        "password": password,
      });

      Get.to(LoginPage());
    } catch (e) {
      Get.snackbar("About User", "User message",

          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.black)));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(SplashScreen());
    } catch (e) {
      Get.snackbar("About Login", "Login message",
          //backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.black)));
    }
  }

  void logOut() async {
    await auth.signOut();
  }
}
