import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

import 'food.dart';


class FoodLog {
  late String foodName;
  late int grams;
  late int hour, minute;

  FoodLog({required this.grams, required this.foodName});

  FoodLog.fromJson(Map<String, dynamic> json)
      : foodName = json['name'],
        grams = json['grams'],
        hour = json['hour'],
        minute = json['minute'];

  Map<String, dynamic> toJson() =>
      {'name': foodName, 'grams': grams, 'hour': hour, 'minute': minute};

  MacroNutrients calculateMacros() {
    double protein = -1;
    double carbs = 0;
    double fat = 0;
    double calories = 0;
    for (int i = 0; i < Foods.length; i++) {
      if (Foods[i].name == foodName) {
        double foodRatio = grams.toDouble() / 100.0;
        protein = Foods[i].macros.protein * foodRatio;
        carbs = Foods[i].macros.carbohidrates * foodRatio;
        fat = Foods[i].macros.fat * foodRatio;
        calories = Foods[i].macros.calories * foodRatio;
        return MacroNutrients(
            calories: calories,
            protein: protein,
            carbohidrates: carbs,
            fat: fat);
      }
    }
    return MacroNutrients(
        calories: -1, protein: -1, carbohidrates: -1, fat: -1);
  }

  Widget getLogWidget() {
    var macros = calculateMacros();
    if (macros.protein == -1) {
      return Text('Food $foodName not found');
    }
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)),
              child: Stack(children: [
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$foodName(${grams}g)",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "${hour < 10 ? "0$hour" : hour.toString()}:${minute < 10 ? "0$minute" : minute.toString()}",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("${macros.calories.toStringAsFixed(2)}cal",
                          style:TextStyle(color: Colors.black))),
                ),
                // Positioned(
                //   top: 20,
                //   width: 350,
                //   child: Wrap(
                //     alignment: WrapAlignment.spaceAround,
                //     children: [
                //       Text("🥩${macros.protein.toStringAsFixed(2)}",
                //           style: GoogleFonts.bebasNeue(color: Colors.white)),
                //       Text("🥔${macros.carbohidrates.toStringAsFixed(2)}",
                //           style: GoogleFonts.bebasNeue(color: Colors.white)),
                //       Text("🧀${macros.fat.toStringAsFixed(2)}",
                //           style: GoogleFonts.bebasNeue(color: Colors.white))
                //     ],
                //   ),
                // )
              ])),
        ));
  }
}
