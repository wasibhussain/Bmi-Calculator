import 'package:bmi/Screens/calories%20calculator/main_widget.dart';
import 'package:bmi/Screens/calories%20food/calories_food.dart';
import 'package:bmi/Screens/calories_burn_info/calories_burn.dart';
import 'package:bmi/Screens/diets/weight_gain.dart';
import 'package:bmi/Screens/diseases/diseasees.dart';
import 'package:bmi/Screens/exercise%20videos/exercise_videos.dart';
import 'package:bmi/Screens/exercise/weight_loss.dart';
import 'package:bmi/Screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            curve: Curves.bounceIn,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Fitness App',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close))
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('BMI Calculator'),
            onTap: () {
              Get.back();
              Get.to(InputPage());
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Common Diseases'),
            onTap: () {
              Get.back();
              Get.to(Diseases());
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Calories Calculator'),
            onTap: () {
              Get.to(const MainWidget());
              //Get.back();
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Calories Food'),
            onTap: () {
              Get.to(const CaloriesFood());
            },
          ),
          const Divider(color: Colors.black),
          ListTile(
            title: const Text('Weight Gain'),
            onTap: () {
              Get.back();
              Get.to(const WeightGain());
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Weight Loss'),
            onTap: () {
              Get.back();
              Get.to(const WeightLoss());
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Exercise For Kids'),
            onTap: () {
              Get.back();
              Get.to(ExerciseVideos());
            },
          ),
          const Divider(color: Colors.black),
             ListTile(
            title: const Text('Calories Burning Info'),
            onTap: () {
              Get.back();
              Get.to( const CaloriesBurnInfo());
            },
          ),
          const Divider(color: Colors.black),
        ],
      ),
    );
  }
}
