import 'package:flutter/material.dart';

class TextHelper {
  static Size textSize(
    String text,
    TextStyle? style, {
    double? maxWidth,
    int? maxLines,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: maxWidth ?? double.infinity);
    return textPainter.size;
  }
}
