import 'package:flutter/material.dart';

// CustomTwo widget'ı, özel bir animasyon ve görünüm ile bir düğme oluşturur.
class CustomTwo extends StatefulWidget {
  // Düğmenin boyutu
  final double size;
  // Düğmeye tıklandığında çalışacak geri çağrı işlevi
  final VoidCallback? onPress;
  // Düğmenin rengi
  final Color color;
  // Düğme metni
  final String title;

  const CustomTwo({
    super.key,
    required this.size,
    required this.onPress,
    required this.color,
    required this.title,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTwoState createState() => _CustomTwoState();
}

class _CustomTwoState extends State<CustomTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late TickerFuture tickerFuture;

  @override
  void initState() {
    super.initState();
    // Animasyon denetleyicisi oluşturulur
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    // Animasyon başlangıç ve bitiş değerleri arasında bir geçiş yapar
    animation = Tween<double>(begin: -widget.size * 0.1, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    // Animasyon denetleyicisi temizlenir
    animationController.dispose();
    super.dispose();
  }

  // Düğmeye tıklandığında tetiklenecek işlev
  void onTopUp(_) {
    if (widget.onPress != null) {
      tickerFuture.whenComplete(() {
        // Animasyon sıfırlanır ve geri çağrı işlevi çağrılır
        animationController.animateTo(0.0);
        widget.onPress?.call();
      });
    }
  }

  // Düğmeye dokunulduğunda tetiklenecek işlev
  void onTapDown(_) {
    if (widget.onPress != null) {
      tickerFuture = animationController.animateTo(1.0);
    }
  }

  // Düğmeden ayrıldığında veya dokunma iptal edildiğinde tetiklenecek işlev
  void onTapCancel() {
    if (widget.onPress != null) {
      // Animasyon sıfırlanır
      animationController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Özel düğme widget'ı oluşturulur
    return Container(
      width: widget.size * 2,
      height: widget.size,
      // Düğme arka plan rengi ve şekli ayarlanır
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: widget.color,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          GestureDetector(
            // Düğme etkileşim olayları atanır
            onTapDown: onTapDown,
            onTapUp: onTopUp,
            onTapCancel: onTapCancel,
            child: AnimatedBuilder(
              // Animasyon değeri kullanılarak düğmenin konumu güncellenir
              animation: animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(-animation.value, animation.value),
                  child: Center(
                    child: Container(
                      width: widget.size * 2,
                      height: widget.size,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: widget.color,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        // Düğme metni ve stili ayarlanır
                        child: Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: widget.size * 0.18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
