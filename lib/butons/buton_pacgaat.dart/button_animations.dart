import 'package:flutter/material.dart';
import 'package:button_animations/button_animations.dart';
import 'package:button_animations/constants.dart';

class ButtonanimationsPaket extends StatefulWidget {
  const ButtonanimationsPaket({super.key});

  @override
  State<ButtonanimationsPaket> createState() => _ButtonanimationsPaketState();
}

class _ButtonanimationsPaketState extends State<ButtonanimationsPaket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button_animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedButton(
              type: PredefinedThemes.info,
              isOutline: true,
              borderWidth: 1,
              onTap: () {},
              child: const Text(
                'Danger', // add your text here
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AnimatedButton(
                  type: PredefinedThemes.success,
                  child: const Text(
                    'Success',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  onTap: () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedButton(
                type: PredefinedThemes.warning,
                onTap: () {},
                isMultiColor: true,
                colors: const [
                  Colors.red,
                  Colors.blue,
                ],
                child: const Text("Gradient Button"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedButton(
                type: PredefinedThemes.warningOutline,
                onTap: () {},
                isMultiColor: true,
                isOutline: true,
                colors: const [
                  Colors.green,
                  Colors.blue,
                ],
                child: const Text(
                  "Gradient Button with outline",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: AnimatedButton(
                onTap: () {
                  debugPrint('Yazdı');
                },
                type: null,
                height: 60,
                width: 220,
                borderRadius: 30,
                isOutline: true,
                color: Colors.deepPurple,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home, color: Colors.white),
                    Text("Button with Icon & outline",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
