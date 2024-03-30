import 'package:flutter/material.dart';

class LearnDropDown extends StatefulWidget {
  const LearnDropDown({super.key});

  @override
  State<LearnDropDown> createState() => _LearnDropDownState();
}

class _LearnDropDownState extends State<LearnDropDown> {
  String? selecTedOption;
  bool isChecks = true;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      borderRadius: const BorderRadius.all(Radius.circular(2)),
      // Açılan pencerenşn rengini belirler
      dropdownColor: const Color.fromARGB(255, 162, 116, 116),
      hint: const Text('Hint '),
      focusColor: Colors.green,
      underline: const Icon(Icons.access_alarm),
      //Yazının rtengini ve stlini belirle
      style: const TextStyle(color: Colors.black),
      elevation: 5,
      icon: const Icon(Icons.face),

      isExpanded: false,
      // İlk öğe görüntülenen metin, ikinci öğe değer
      items: const [
        DropdownMenuItem(
          value: 'option1',
          child: Text('Seçenek 1'),
        ),
        DropdownMenuItem(
          value: 'option2',
          child: Text('Seçenek 2'),
        ),
        DropdownMenuItem(
          value: 'option3',
          child: Text('Seçenek 3'),
        ),
      ],
      value: selecTedOption,
      onChanged: (value) {
        // Seçilen değeri güncelle
        selecTedOption = value;
        setState(() {});
      },
    );
  }
}
