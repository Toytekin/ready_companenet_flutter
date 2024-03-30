import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnSlayder extends StatefulWidget {
  double sliyderValue;

  LearnSlayder({
    super.key,
    required this.sliyderValue,
  });

  @override
  State<LearnSlayder> createState() => _LearnSlayderState();
}

class _LearnSlayderState extends State<LearnSlayder> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      // Kullanıcı etkileşimini belirler
      allowedInteraction: SliderInteraction.slideOnly,
      // Slidera odaklanmayı sağlayan focusNode
      focusNode: FocusScopeNode(),
      // Etkin olmayan durumda kullanılacak renk
      inactiveColor: Colors.grey,
      // Sliderın yanında görünen etiket
      label: 'LABEL',
      // Değer değişmeye başladığında çağrılan fonksiyon
      onChangeStart: (value) {
        debugPrint('Değer değişmeye başladı');
      },
      // Sliderın üzerine gelindiğinde gölgelendirme rengi
      //? overlayColor: ,
      // İkincil (küçük) yüzeyin etkin renk
      secondaryActiveColor: Colors.amber,
      // İkincil (küçük) yüzeyin değeri
      secondaryTrackValue: 12,
      // Sliderın semantik değerini biçimlendiren geri arama
      //? semanticFormatterCallback: ,
      // Sliderın başparmağının rengi
      thumbColor: Colors.green,
      // Değerlerin bölündüğü miktar
      divisions: 10,
      // Slidera otomatik odaklanmayı belirler
      autofocus: true,
      // Sliderın etkin durumunda kullanılacak renk
      activeColor: Colors.red,
      // Minimum değer
      min: 0.0,
      // Maksimum değer
      max: 100.0,
      // Başlangıç değeri
      value: widget.sliyderValue,
      // Değer değiştiğinde çağrılan fonksiyon
      onChanged: (newValue) {
        setState(() {
          widget.sliyderValue = newValue;
        });
      },
    );
  }
}
