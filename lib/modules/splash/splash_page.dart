import 'package:flutter/material.dart';
import 'package:split_it/modules/splash/widgets/splash_rectangle.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.background,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SplashRectangle(isRight: true),
                  SizedBox(height: 24),
                  SplashRectangle(isRight: true, isSmall: true),
                ],
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 128,
                height: 112,
              ),
              Column(
                children: [
                  SplashRectangle(isSmall: true),
                  SizedBox(height: 24),
                  SplashRectangle(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
