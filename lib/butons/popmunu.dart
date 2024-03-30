import 'package:flutter/material.dart';

class LearnPopopMenu extends StatefulWidget {
  const LearnPopopMenu({super.key});

  @override
  State<LearnPopopMenu> createState() => _LearnPopopMenuState();
}

class _LearnPopopMenuState extends State<LearnPopopMenu> {
  String _popMenuItem = 'PopupMenuButon';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Açılan pencerenin rengi
      color: Colors.teal,

      //Açılan pencerenin yüksekliğini ve genişliğini belirleriz
      constraints: const BoxConstraints.expand(
        height: 300,
        width: 205,
      ),
      //Açılan pencerenin önceki ekranla arasında boşluk bırakmamk için
      elevation: 0,

      child: Text(_popMenuItem),
      itemBuilder: (context) {
        return [
          const PopupMenuItem<String>(
            value: 'item1',
            child: Text('Öğe 1'),
          ),
          const PopupMenuItem<String>(
            value: 'item2',
            child: Text('Öğe 2'),
          ),
          const PopupMenuItem<String>(
            value: 'item3',
            child: Text('Öğe 3'),
          ),
        ];
      },
      onSelected: (value) {
        setState(() {
          _popMenuItem = value;
        });
      },
    );
  }
}
