import 'package:bmi/Screens/countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiseasesItemDetails extends StatelessWidget {
  String title;
  String subtitle;
  String causes;
  String symptoms;
  String treatment;
  String prevention;

  DiseasesItemDetails(this.title, this.subtitle, this.causes, this.symptoms,
      this.treatment, this.prevention);
  //Map<String, dynamic>? day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(title, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text('Causes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(causes,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w100)),
            const SizedBox(height: 20),
            const Text('Symptoms',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(symptoms, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Treatment',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(treatment, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Prevention',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(prevention, style: const TextStyle(fontSize: 16)),

            // InkWell(
            //   onTap: () {
            //     Get.to(CountDownTimer());
            //   },
            //   child: Container(
            //     height: 70,
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15),
            //         color: Colors.black),
            //     child: const Center(
            //       child: Text(
            //         'Start Exercises',
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //             fontSize: 24),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
