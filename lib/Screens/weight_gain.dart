import 'package:bmi/Screens/diet_plan_30_days.dart';
import 'package:bmi/widgets/diet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WeightGain extends StatelessWidget {
  const WeightGain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Diet Plan"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DietPlan30Days()));
                  }),
                  child: diteItemsCard(
                      imageUrl: 'assets/images/image013.jpg',
                      title: 'Diet Plan For Weight Gain 30 Days')),
              const SizedBox(height: 20),
              Text(
                textAlign: TextAlign.justify,
                "Gaining weight can be just as challenging as losing weight. While the main focus is to increase energy and protein intakes, it is also important to maintain a healthy balanced diet without eating too many foods that might have high amounts of calories but little in the way of good nutrition This 7-day weight gain meal plan provides one example of how to achieve a higher protein and higher calorie intake from healthy energy-giving foods such as lean meat, dairy, eggs, seeds and nuts, which will assist you to enjoy your food while working your way toward achieving your weight gain goals. Those with a medical issue should seek advice from a medical practitioner before changing their diet.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Notes About This Meal Plan",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                textAlign: TextAlign.justify,
                "•This meal plan provides approximately 11,500kJ daily and is based on the average energy and nutrient requirements for weight gain in 18 – 65 year old adults who undertake light to moderate levels of activity. Your energy requirements vary depending on age, activity, health status, height and weight. For personalised advice, seek the services of an Accredited Practising Dietitian. \n• This meal plan provides at least the minimum number of serves from each of the core food groups as recommended in the Australian Guide to Healthy Eating* for adults (other than women over 51 years and men over 70 years who require additional milk, cheese or yoghurt).",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(DietPlan30Days());
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: const Center(
                    child: Text(
                      'Go to the Diets',
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
