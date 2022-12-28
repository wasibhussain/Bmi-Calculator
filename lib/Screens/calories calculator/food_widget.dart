import 'package:bmi/main.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => FoodState();
}

class FoodState extends State<Food> {
  static List<Widget> FoodWidgets = [];

  void buildFoods() {
    setState(() {
      FoodWidgets.clear();
      for (int i = 0; i < Foods.length; i++) {
        FoodWidgets.add(FutureBuilder<Widget>(
            future: Foods[i].getFoodWidget(() {
              setState(() => {build(context)});
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return snapshot.data!;
              } else {
                return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: const Center(child: Text("Loading...")));
              }
            }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    buildFoods();

    return Scaffold(
        body: FoodWidgets.isEmpty
            ? const Center(
                child: Text(
                  'No Food Added Yet..',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            : ListView(
                children: FoodWidgets,
              )
              
              );
  }
}
