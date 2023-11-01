import 'package:flutter/painting.dart';

extension ColorExtension on String {
  Color get fromRGBACode {
    try {
      final rgbaExp = RegExp(r'rgba\((\d+),\s*(\d+),\s*(\d+),\s*(.+)\)');
      final match = rgbaExp.firstMatch(this);

      if (match == null) {
        throw FormatException("Couldn't parse color from string: $this");
      }

      final red = int.parse(match.group(1)!);
      final green = int.parse(match.group(2)!);
      final blue = int.parse(match.group(3)!);
      final opacity = double.parse(match.group(4)!);

      return Color.fromRGBO(red, green, blue, opacity);
    } catch (e) {
      throw FormatException('Invalid RGBA code: $this. Original error: $e');
    }
  }

  String get opacityFromRGBACode {
    try {
      final rgbaExp = RegExp(r'rgba\((\d+),\s*(\d+),\s*(\d+),\s*(.+)\)');
      final match = rgbaExp.firstMatch(this);

      if (match == null) {
        throw FormatException("Couldn't parse color from string: $this");
      }

      return split(',').last.replaceAll(')', '');
    } catch (e) {
      throw FormatException('Invalid RGBA code: $this. Original error: $e');
    }
  }
}
