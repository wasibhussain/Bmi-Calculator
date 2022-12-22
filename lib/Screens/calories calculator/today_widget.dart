import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';

import 'add_log_widget.dart';
import 'food_log.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => TodayState();
}

class TodayState extends State<Today> {
  TextEditingController calorieGoalController = TextEditingController();
  late Widget selectedWidget;
  bool inAddMenu = false;

  Widget getOffDayWidget() {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Enter Today's Target:"),
              SizedBox(height: 10),
              Container(
                 
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey[300]!)),
                child: TextField(
                    controller: calorieGoalController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Calories",
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
              ),
              SizedBox(height: 10),
               Center(
                 child: TextButton(
            onPressed: () {
              if (calorieGoalController.text == "") return;
              preferenceInstance.setBool("onday", true);
              preferenceInstance.setInt(
                    "caloriegoal", int.parse(calorieGoalController.text));
              preferenceInstance.setInt(
                    "caloriesleft", int.parse(calorieGoalController.text));
              preferenceInstance.setString("todaylog", '[]');
              setState(() {
                  selectedWidget = getOnDayWidget();
              });
            },
            style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
            child: const Text("Start")),
               )
            ],
          ),
        ),
        
       
      ],
    );
  }

  Widget getOnDayWidget() {
    String? foodsJson = preferenceInstance.getString("todaylog");
    List<Widget> logWidgets = <Widget>[];
    double protein = 0;
    double carbs = 0;
    double fat = 0;
    int caloriesLeft = preferenceInstance.getInt("caloriesleft")!;
    int caloriesMax = preferenceInstance.getInt("caloriegoal")!;
    if (foodsJson != null) {
      logWidgets.add(const Padding(padding: EdgeInsets.only(top: 30)));
      Iterable l = json.decode(foodsJson);
      l.forEach(((element) {
        var log = FoodLog.fromJson(element);
        var macros = log.calculateMacros();
        protein += macros.protein;
        fat += macros.fat;
        carbs += macros.carbohidrates;
        logWidgets.add(log.getLogWidget());
      }));
      logWidgets.add(const Padding(padding: EdgeInsets.only(bottom: 100)));
    }
    return Stack(
      children: [
        logWidgets.isEmpty
            ? const Align(
                alignment: Alignment.topCenter,
                child: Text("No food added yet"))
            : ListView(children: logWidgets),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                 backgroundColor: Colors.black,
                onPressed: () {
                  inAddMenu = true;
                  setState(() {
                    selectedWidget = AddLogWidget(closeCallback: () {
                      setState(() {
                        inAddMenu = false;
                      });
                    });
                  });
                },
                child: const Icon(Icons.add),
              ),
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                 backgroundColor: Colors.black,
                onPressed: () {
                  setState(() {
                    AlertDialog dialog = AlertDialog(
                      title:
                          const Text("Are you sure you want to end the day?"),
                      content: const Text("Yes or no"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              setState(() {
                                preferenceInstance.setBool("onday", false);
                                preferenceInstance.setString("todaylog", '[]');
                              });
                            },
                            child: const Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("No"))
                      ],
                    );
                    showDialog(context: context, builder: (_) => dialog);
                  });
                },
                child: const Icon(Icons.check),
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.black),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.94,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        caloriesLeft == 0
                            ? "Calories completed!"
                            : "Calories left:$caloriesLeft",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Icon(
                      Icons.tag_faces_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool onday = preferenceInstance.getBool("onday") ?? false;
    if (!inAddMenu) {
      selectedWidget = onday ? getOnDayWidget() : getOffDayWidget();
    }
    return Padding(
        padding: const EdgeInsets.only(top: 5), child: selectedWidget);
  }
}
