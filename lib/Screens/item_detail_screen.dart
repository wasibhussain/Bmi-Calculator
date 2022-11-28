import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DietItemDetails extends StatelessWidget {
  String itemImageUrl;
  String title;
  String breakfast;
  String lunch;
  String dinner;
  String snacks;

  DietItemDetails(this.itemImageUrl, this.title, this.breakfast, this.lunch,
      this.dinner, this.snacks);
  //Map<String, dynamic>? day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Diet Details"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.asset(
                itemImageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text('Breakfast',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(breakfast,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100)),
            SizedBox(height: 20),
            Text('Lunch',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(lunch, style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Dinner',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(dinner, style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Snacks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(snacks, style: TextStyle(fontSize: 18)),
          ],
        ),
      )),
    );
  }
}
