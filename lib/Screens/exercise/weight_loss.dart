import 'package:bmi/Screens/exercise/exercise_plan.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'exercise_plan.dart';

class WeightLoss extends StatelessWidget {
  const WeightLoss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Exercise Plan"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: (() {
                Get.to(ExercisePlan());
                }),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/image001.jpg',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 300,
                        color: Colors.black54,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        child: const Text(
                          "15 Exercises can loss weight",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                textAlign: TextAlign.justify,
                "Want to lose some pounds? Wishing for an hourglass figure like Kim Kardashian? Not having to breathe heavy when you have to take the stairs? No matter what your goals are, we’ve got you covered with the ultimate home workout. Home workouts bring many advantages with them: First of all, you save yourself the membership fee for the gym and it is way easier to incorporate training at home into your everyday life. Secondly, you do not have to wait long for devices that are occupied and there is no long waiting line in front of the shower as well. Since you are by yourself, you can concentrate more intensely on your own body and the right way to do your moves and therefore get the best results possible! A workout, even if it’s only 10-15 minutes long, has many positive effects on you. During sport, stress is relieved and happiness hormones are released, especially as a student, this can often help you to concentrate better again! In addition, regular exercise improves your sleep quality, your immune system and your blood circulation too!.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Exercise Plan",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.justify,
                "Today we will show you 15 exercises that you can do at home and for which you don’t need any equipment at all! We have 10 full body exercises for you, which focus on muscle building and definition.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(ExercisePlan());
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: const Center(
                    child: Text(
                      'Go to the Exercises',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ));
  }
}
