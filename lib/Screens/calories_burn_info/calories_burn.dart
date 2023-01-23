import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class CaloriesBurnInfo extends StatelessWidget {
  const CaloriesBurnInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calories Burn Info"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset("assets/images/jogging.svg",
                  width: 300, height: 300.0),
              const Text(
                "The number of calories burned while walking 1 km varies depending on a person's weight, walking speed, and terrain. On average, a person weighing 68.04 kg (150 lbs) burns approximately 50 calories by walking 1 km at a moderate pace. However, this can be lower or higher depending on the individual's weight, speed, and the terrain. \n\nFor a 20-year-old man weighing 75.75 kg (165 lbs) and walking at a moderate pace, he would burn around 55 calories by walking 1 km. For a 20-year-old woman weighing 63.50 kg (140 lbs) and walking at a moderate pace, she would burn around 45 calories by walking 1 km. \n\nFor a 50-year-old man weighing 83.91 kg (185 lbs) and walking at a moderate pace, he would burn around 60 calories by walking 1 km. For a 50-year-old woman weighing 72.57 kg (160 lbs) and walking at a moderate pace, she would burn around 50 calories by walking 1 km.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
