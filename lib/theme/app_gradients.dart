import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get background;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get background => LinearGradient(colors: [
        Color(0xFF40B28C),
        Color(0xFF45CC93),
      ], stops: [
        0,
        1
      ], transform: GradientRotation(2.35619 * pi));
}
