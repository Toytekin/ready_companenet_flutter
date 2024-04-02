import 'package:flutter/material.dart';
import 'package:ready_companent/butons/custombutons/custom_one.dart';
import 'package:ready_companent/butons/custombutons/custom_two.dart';

class CustomButonPage extends StatefulWidget {
  const CustomButonPage({super.key});

  @override
  State<CustomButonPage> createState() => _CustomButonPageState();
}

class _CustomButonPageState extends State<CustomButonPage> {
  bool cirCularDurum = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: cirCularDurum ? const Text('Custom Buton Page') : null,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomOne(
                title: 'İbrahim Toytekin',
                color: Colors.green,
                size: 100,
                onPress: () {
                  setState(() {
                    cirCularDurum = !cirCularDurum;
                  });
                },
              ),
              CustomTwo(
                title: 'İbrahim Toytekin',
                color: Colors.green,
                size: 100,
                onPress: () {
                  setState(() {
                    cirCularDurum = !cirCularDurum;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
