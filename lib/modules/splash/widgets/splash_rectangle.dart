import 'package:flutter/material.dart';

class SplashRectangle extends StatelessWidget {
  final bool isRight;
  final bool isSmall;
  const SplashRectangle({Key? key, this.isRight = false, this.isSmall = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isRight ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Opacity(
          opacity: 0.2,
          child: Image.asset(
            isRight
                ? 'assets/images/retangulo-dir.png'
                : 'assets/images/retangulo-esq.png',
            width: isSmall ? 114 : 198,
            height: isSmall ? 54 : 98,
          ),
        ),
      ],
    );
  }
}
