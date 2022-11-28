import 'package:bmi/Screens/countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseItemDetails extends StatelessWidget {
  String itemImageUrl;
  String title;
  String step1;
  String step2;
  String step3;

  ExerciseItemDetails(
      this.itemImageUrl, this.title, this.step1, this.step2, this.step3);
  //Map<String, dynamic>? day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Exercise Details"),
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
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text('Step 1',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(step1,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100)),
            const SizedBox(height: 20),
            Text('Step 2',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(step2, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text('Step 3',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(step3, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Get.to(CountDownTimer());
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    'Start Exercises',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
