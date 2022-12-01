import 'package:bmi/Screens/diets/weight_gain.dart';
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
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
            curve: Curves.bounceIn,
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
            title: const Text('Diseases'),
            onTap: () {
              Get.back();
            },
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.6,
          ),
          ListTile(
            title: const Text('Calories Calculator'),
            onTap: () {
              //  Get.to(InputPage());
              Get.back();
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Weight Gain'),
            onTap: () {
              Get.back();
              Get.to(WeightGain());
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: const Text('Weight Loss'),
            onTap: () {
              Get.back();
              Get.to(WeightLoss());
            },
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
