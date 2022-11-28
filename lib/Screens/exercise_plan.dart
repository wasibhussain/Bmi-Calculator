import 'package:bmi/Screens/item_detail_screen.dart';
import 'package:bmi/widgets/exercise_item_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/diet_item_widget.dart';
import 'exercise_item_detals.dart';

class ExercisePlan extends StatelessWidget {
  ExercisePlan({Key? key}) : super(key: key);

  List<Map<String, dynamic>> exerciseItemDetailsMap = [
    {
      "id": 1,
      "imageUrl": "assets/images/ex1.gif",
      "title": 'Sprinter sit-up',
      'subtitle': "Strength, Toning, Core",
      'step1':
          'Lie on back with the legs straight and arms by your side, elbows bent at a 90-degree angle',
      'step2': "Sit up, bringing the left knee toward the right elbow",
      'step3': "Lower back down to starting position",
    },
    {
      "id": 2,
      "imageUrl": "assets/images/ex2.gif",
      "title": 'Dead bugs',
      'subtitle': "Core",
      'step1':
          'Lie on back with arms extended upwards and knees bent at 90degrees with feet in the air',
      'step2':
          "Drop your arm and leg on the opposite side and make sure your leg doesn’t touch the floor",
      'step3':
          "Bring them slowly back up to starting position and repeat with opposite side",
    },
    {
      "id": 3,
      "imageUrl": "assets/images/ex3.gif",
      "title": 'Three way crunches',
      'subtitle': "Strength, Core",
      'step1': 'Lie on back, knees bent and feet hooked over each other',
      'step2':
          "Perform a sequence of 3 crunches: firstly crunch to bring right elbow toward left knee, secondly crunch straight upwards, finally crunch to bring left elbow toward right knee",
      'step3': "Repeat this sequence",
    },
    {
      "id": 4,
      "imageUrl": "assets/images/ex4.gif",
      "title": 'Mountain climber twists',
      'subtitle': "Core",
      'step1': 'Start on your hands and toes',
      'step2':
          "Bending at the knee, bring your left knee forward directly under your chest while keeping your right leg straight",
      'step3': "Quickly alternate legs while keeping your core muscles tight",
    },
    {
      "id": 5,
      "imageUrl": "assets/images/ex5.gif",
      "title": 'Contralateral limb raises',
      'subtitle': "Core",
      'step1':
          'Lie on your stomach with the arms outstretched and palms facing one another',
      'step2':
          "Slowly lift one arm a few inches off the floor, keeping it straight without rotating the shoulders",
      'step3': "Simultaneously lift the leg of the other side",
    },
    {
      "id": 6,
      "imageUrl": "assets/images/ex6.gif",
      "title": 'Russian twist',
      'subtitle': "Core, Advanced, Stability",
      'step1': 'Sit on floor, knees bent and feet on the floor',
      'step2':
          "Keep your back at a 45-degree angle, arms extended with palms together",
      'step3': "Move the arms from one side to another in a twisting motion",
    },
    {
      "id": 7,
      "imageUrl": "assets/images/ex7.gif",
      "title": 'Supine bridge with leg',
      'subtitle': "Core",
      'step1':
          'Lie on back, knees bent and feet on floor, arms elevated above your head',
      'step2':
          "Lift hips up off the ground so that your knees, hips and shoulders are in a straight diagonal line",
      'step3':
          "Holding hips level, lift one foot off the ground 1-2 inches and slowly place down again and repeat with alternate leg",
      'step4': "Keep core muscles tight throughout the entire movement",
    },
    {
      "id": 8,
      "imageUrl": "assets/images/ex8.gif",
      "title": 'Side to side lunge',
      'subtitle': "Cardio",
      'step1': 'Begin facing forward and pivot to the right',
      'step2':
          "Step your right leg back as you bend your right knee into a lunge",
      'step3': "Punch forward with your left arm then your right arm",
      'step4':
          "Step back to the middle and turn to the left, taking your left leg back and your right arm forward in a punch followed by your left arm",
    },
    {
      "id": 9,
      "imageUrl": "assets/images/ex9.gif",
      "title": 'Front kick plank',
      'subtitle': "Cardio",
      'step1':
          'Begin with feet together and the arms up in a defensive position',
      'step2': "Bring the right knee up and kick outwards",
      'step3':
          "Balancing on the left leg, bring the right leg back behind you, hands to the floor",
      'step4':
          "Bring the left foot next to the right into a plank, holding briefly",
    },
    {
      "id": 10,
      "imageUrl": "assets/images/ex10.gif",
      "title": 'Fast step ups',
      'subtitle': "Cardio, Stability",
      'step1': 'Complete quick step-ups, alternating legs with each step up',
      'step2': "Choose a higher step to make this more difficult",
      'step3':
          "Holding hips level, lift one foot off the ground 1-2 inches and slowly place down again and repeat with alternate leg",
    },
    {
      "id": 11,
      "imageUrl": "assets/images/ex11.gif",
      "title": 'Lunge with twist',
      'subtitle': "Strength",
      'step1': 'Complete a lunge, bending at both knees to lower downwards',
      'step2': "Your knees should not pass over your toes",
      'step3':
          "Instead of bringing the forward leg back to the starting position, raise it up off the floor while lifting the arms overhead",
    },
    {
      "id": 12,
      "imageUrl": "assets/images/ex12.gif",
      "title": 'Lateral hops',
      'subtitle': "Cardio",
      'step1':
          'Keeping your legs together, jump from side to side, jumping over an imaginary obstacle',
      'step2': "Land with soft knees",
      'step3': "Try to remain on the balls of your feet",
    },
    {
      "id": 13,
      "imageUrl": "assets/images/ex13.gif",
      "title": 'Side lunges',
      'subtitle': "Toning, Stability",
      'step1': 'Step out to the side, keeping toes pointing forward',
      'step2': "Complete a lunge, bending at both knees to lower downwards",
      'step3': "Your knees should not pass over your toes",
      'step4': "Step back to starting position to repeat to the opposite side",
    },
    {
      "id": 14,
      "imageUrl": "assets/images/ex14.gif",
      "title": 'Advanced jumping jacks',
      'subtitle': "Beginner",
      'step1':
          'Stand with your feet together, knees slightly bent, and arms at your sides.',
      'step2': "Jump while raising your arms and separating legs to sides",
      'step3': "Land on your forefoot with legs apart and arms overhead",
    },
    {
      "id": 15,
      "imageUrl": "assets/images/ex15.gif",
      "title": 'Donkey kicks',
      'subtitle': "Core",
      'step1': 'Position self on forearms and knees',
      'step2': "Keeping core tight, kick 1 leg backwards into the air",
      'step3':
          "Bend knee to bring leg back down and the knee toward your chest",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Exercises"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: exerciseItemDetailsMap.length,
          itemBuilder: (context, index) => InkWell(
            onTap: (() {
              Get.to(ExerciseItemDetails(
                exerciseItemDetailsMap[index]['imageUrl'],
                exerciseItemDetailsMap[index]['title'],
                exerciseItemDetailsMap[index]['step1'],
                exerciseItemDetailsMap[index]['step2'],
                exerciseItemDetailsMap[index]['step3'],
              ));
            }),
            child: ExerciseItemsCard(
              imageUrl: exerciseItemDetailsMap[index]['imageUrl'],
              title: exerciseItemDetailsMap[index]['title'],
              subtitle: exerciseItemDetailsMap[index]['subtitle'],
            ),
          ),
          // diteItemsCard(imageUrl: 'assets/images/day2.jpg', title: "Day 2"),
          // diteItemsCard(imageUrl: 'assets/images/day3.jpg', title: "Day 3"),
          // diteItemsCard(imageUrl: 'assets/images/day4.png', title: "Day 4"),
          // diteItemsCard(imageUrl: 'assets/images/day5.jpg', title: "Day 5"),
          // diteItemsCard(imageUrl: 'assets/images/day6.jpg', title: "Day 6"),
          // diteItemsCard(imageUrl: 'assets/images/day7.jpg', title: "Day 7")
        ),
      ),
    );
  }
}
