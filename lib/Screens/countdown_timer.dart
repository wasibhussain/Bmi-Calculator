import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({Key? key}) : super(key: key);

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

final _countDownController = CountDownController();

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Countdown Timer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularCountDownTimer(
              controller: _countDownController,
              duration: 30,
              isReverse: true,
              fillColor: Color.fromARGB(255, 166, 117, 245),
              height: 250,
              width: 250,
              strokeWidth: 40,
              onComplete: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'Finished',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(seconds: 2),
                  backgroundColor: Color(0xFF00D9F6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // padding: const EdgeInsets.only(left: 20, top: 20),
                ));
              },
              strokeCap: StrokeCap.round,
              isReverseAnimation: true,
              ringColor: Color(0xFF6C7589),
              autoStart: true,
              textStyle: TextStyle(
                fontSize: 80,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => _countDownController.pause(),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Pause',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _countDownController.resume(),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Resume',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                    ),
                  ),
                ),
                // Button(
                //     text: 'Restart',
                //     onPressed: () => _countDownController.start()),
                // Button(
                //     text: 'Pause', onPressed: () => _countDownController.pause()),
                // Button(
                //     text: 'Resume',
                //     onPressed: () => _countDownController.resume()),
              ],
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () => _countDownController.start(),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: const Center(
                child: Text(
                  'Restart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ));
  }
}
