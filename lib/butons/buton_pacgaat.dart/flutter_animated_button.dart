import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class FlutterAnimatedButtonPage extends StatefulWidget {
  const FlutterAnimatedButtonPage({super.key});

  @override
  State<FlutterAnimatedButtonPage> createState() =>
      _FlutterAnimatedButtonPageState();
}

class _FlutterAnimatedButtonPageState extends State<FlutterAnimatedButtonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AnimatedButton(
                    animatedOn: AnimatedOn.onHover,
                    onPress: () {},
                    onChanges: (change) {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TOP_ROUNDER,
                    backgroundColor: Colors.black,
                    selectedBackgroundColor: Colors.lightGreen,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    gradient: const LinearGradient(
                        colors: [Colors.red, Colors.orange]),
                    selectedGradientColor: const LinearGradient(
                        colors: [Colors.pinkAccent, Colors.purpleAccent]),
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_CENTER_ROUNDER,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.RIGHT_TOP_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.RIGHT_CENTER_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.TOP_CENTER_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPress: () {},
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.CENTER_ROUNDER,
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderWidth: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton.strip(
                    animatedOn: AnimatedOn.onHover,
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    backgroundColor: Colors.black,
                    onPress: () {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton.strip(
                    animatedOn: AnimatedOn.onHover,
                    height: 70,
                    width: 200,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    backgroundColor: Colors.black,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
