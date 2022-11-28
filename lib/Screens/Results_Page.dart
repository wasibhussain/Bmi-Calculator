import 'package:bmi/Screens/weight_gain.dart';
import 'package:bmi/Screens/weight_loss.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/BottomContainer_Button.dart';
import '../Components/Reusable_Bg.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;

  ResultPage(
      {required this.textColor,
      required this.resultText,
      required this.bmi,
      required this.advise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: ktitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableBg(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  const Text(
                    'Normal BMI range:',
                    style: klabelTextStyle,
                  ),
                  const Text(
                    '18.5 - 25 kg/m2',
                    style: kBodyTextStyle,
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  resultText == "NORMAL"
                      ? const SizedBox()
                      : RawMaterialButton(
                          onPressed: () {
                            if (resultText == "OVERWEIGHT") {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => WeightLoss())));
                            } else if (resultText == "UNDERWEIGHT") {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => WeightGain())));
                            } else if (resultText == "NORMAL") {}
                          },
                          constraints: BoxConstraints.tightFor(
                            width: 200.0,
                            height: 56.0,
                          ),
                          fillColor: Color(0xFF4C4F5E),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            'What To Do',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          // BottomContainer(
          //     text: 'RE-CALCULATE',
          //     onTap: () {
          //       Navigator.pop(context);
          //     }),
        ],
      ),
    );
  }
}
