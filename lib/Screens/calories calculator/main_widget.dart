import 'package:flutter/material.dart';

import 'food_widget.dart';
import 'new_food_widget.dart';
import 'today_widget.dart';


class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  static int bottomBarSelectedIndex = 0;
  static const List<StatefulWidget> widgets = <StatefulWidget>[
    Food(),
    Today(),
    NewFoodWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widgets[bottomBarSelectedIndex].toString()),),
      body: widgets[bottomBarSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) => setState(() {
          bottomBarSelectedIndex = value;
        }),
        currentIndex: bottomBarSelectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Foods"),
          BottomNavigationBarItem(icon: Icon(Icons.today), label: "Today"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "New Food")
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
