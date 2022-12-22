import 'dart:convert';

import 'package:bmi/Screens/splash_screen.dart';
import 'package:bmi/network/test_login.dart';
import 'package:bmi/network/test_signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/calories calculator/food.dart';
import 'Screens/input_page.dart';

List<Food> Foods = [];
late SharedPreferences preferenceInstance;

void saveFoods() {
  preferenceInstance.setString("foods", jsonEncode(Foods));
}



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  preferenceInstance = await SharedPreferences.getInstance();
  String? foodsJson = preferenceInstance.getString("foods");
  Foods = <Food>[];
  if (foodsJson != null) {
    Iterable l = json.decode(foodsJson);
    Foods = List<Food>.from(l.map((model) => Food.fromJson(model)));
  } else {
    Foods = [];
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.light(),

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        fontFamily: 'Geometria',
        // primaryColor: const Color(0xFF0A0E21),
        // scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: LoginPage(),
    );
  }
}
