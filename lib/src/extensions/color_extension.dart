import 'package:flutter/painting.dart';

extension ColorParsing on Color {
  String get toRGBACode {
    return 'rgba($red,$green,$blue,$opacity)';
  }

  /// Useful for ColorFilter
  List<double> get toMatrix {
    // Extract the color components (0-255) and normalize them to the range (0.0-1.0).
    double r = red / 255.0;
    double g = green / 255.0;
    double b = blue / 255.0;
    double a = alpha / 255.0;

    // Create the matrix as a 4x5 list of doubles.
    List<double> colorMatrix = <double>[
      //
      r, 0, 0, 0, 0,
      //
      0, g, 0, 0, 0,
      //
      0, 0, b, 0, 0,
      //
      0, 0, 0, a, 0,
    ];

    return colorMatrix;
  }
}
