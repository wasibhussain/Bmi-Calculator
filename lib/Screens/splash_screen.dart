import 'package:bmi/Screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Diet Plans According to BMI",
          body:
              "You can calculate and evaluate your Body Mass Index (BMI) based on the relevant information on body weight, height and Age.",
          image: Padding(
            padding: const EdgeInsets.only(top: 130, left: 30),
            child: SvgPicture.asset("assets/images/bmi.svg",
                width: 300, height: 300.0),
          ),
        ),
        PageViewModel(
          title: "Excercises and Diet Plans",
          body:
              "Home Workouts provides daily workout routines for all your main muscle groups. In just a few minutes a day, you can build muscles and keep fitness at home without having to go to the gym.",
          image: Padding(
            padding: const EdgeInsets.only(top: 130, left: 30),
            child: SvgPicture.asset("assets/images/fitness.svg",
                width: 300, height: 300.0),
          ),
        ),
      ],
      onDone: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputPage()),
          );
        });
        // When done button is press
      },
      onSkip: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputPage()),
          );
        });
      },
      showSkipButton: true,
      skip: const Text("Skip",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      next: const Text("Next",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      done: const Text("Done",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.black,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
