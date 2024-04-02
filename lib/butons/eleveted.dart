import 'package:flutter/material.dart';

class LearnElevated extends StatelessWidget {
  const LearnElevated({super.key});

  @override
  Widget build(BuildContext context) {
    const elevatedButon = 'Elevated Buton';
    final MaterialStatesController materialStatesController =
        MaterialStatesController();

    return ElevatedButton(
      // Sayfa açıldığında otomatik butona odaklanmasını sağlar
      autofocus: true,
      //widgetın sınırlamasını ayarlar
      //? clipBehavior: Clip.antiAlias,

      // mause butonun üzerine gelince yapılacakları gösterrir
      //? onHover: (isHovering) {
      //   // Düğmenin üzerine gelindiğinde veya üzerinden çıkıldığında gerçekleştirilecek işlev
      //   if (isHovering) {
      //     // Düğmenin üzerine gelindiğinde yapılacak işlemler
      //     print('Düğmenin üzerine gelindi');
      //   } else {
      //     // Düğmenin üzerinden çıkıldığında yapılacak işlemler
      //     print('Düğmenin üzerinden çıkıldı');
      //   }
      // },

      //BUTONA UZUN TIKLAMA
      //? onLongPress: ,

      statesController: materialStatesController,
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black, // Gölgelendirme rengi
        elevation: 4, // Düğme yüksekliği
        padding: const EdgeInsets.symmetric(
            vertical: 16, horizontal: 24), // İçerik dolgusu
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Düğme kenar yuvarlaklığı
          side: const BorderSide(
              color: Colors.black, width: 2), // Kenarlık oluşturur
        ),
        minimumSize: const Size(120, 48), // Minimum düğme boyutu
        fixedSize: const Size(200, 64), // Sabit düğme boyutu
        textStyle: const TextStyle(fontSize: 18), // Düğme metin stili
        alignment:
            Alignment.center, // Düğme içeriğini düğmenin ortasına hizalar
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Dokunma hedef boyutu
        animationDuration:
            const Duration(milliseconds: 200), // Animasyon süresi
        enableFeedback: true, // Geribildirim etkinleştirme

        visualDensity: VisualDensity.standard, // Görüntü yoğunluğu
        backgroundColor: Colors.red, // Arkaplan rengi
        disabledBackgroundColor:
            Colors.green, // Devre dışı bırakıldığında düğmenin arka plan rengi
        disabledForegroundColor: Colors
            .yellowAccent, // Devre dışı bırakıldığında düğmenin ön plan rengi
        foregroundColor: Colors.blue, // Düğmenin ön plan rengi (metin rengi)
        side: const BorderSide(
          color: Colors.greenAccent, // Kenar çizgisi rengi
          strokeAlign:
              0, // Çizgi çizilirken kullanılan koordinat sisteminin hizalanması
          style:
              BorderStyle.solid, // Kenar çizgisi stili (kesikli, sürekli, vb.)
          width: 10, // Kenar çizgisi kalınlığı
        ),
      ),
      onPressed: () {},
      child: const Text(elevatedButon),
    );
  }
}
