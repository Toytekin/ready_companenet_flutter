import 'package:flutter/material.dart';
import 'package:ready_companent/butons/buton_pacgaat.dart/button_animations.dart';
import 'package:ready_companent/butons/buton_pacgaat.dart/flutter_animated_button.dart';

class ButonsPaketMain extends StatefulWidget {
  const ButonsPaketMain({super.key});

  @override
  State<ButonsPaketMain> createState() => _ButonsPaketMainState();
}

class _ButonsPaketMainState extends State<ButonsPaketMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paketlerle Butonlar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ButtonanimationsPaket()),
                  );
                },
                child: const Text('button_animations 2.0.0+3 ')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const FlutterAnimatedButtonPage()),
                  );
                },
                child: const Text('button_animations 2.0.0+3 '))
          ],
        ),
      ),
    );
  }
}
