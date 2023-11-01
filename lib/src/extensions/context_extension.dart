import 'package:flutter/material.dart';

extension ContentExtension on BuildContext {
  /// True if the shortestSide is smaller than 600p
  bool get isPhone => MediaQuery.of(this).size.shortestSide < 600;

  /// True if the shortestSide is largest than 600p
  bool get isSmallTablet => MediaQuery.of(this).size.shortestSide >= 600;

  /// True if the shortestSide is largest than 720p
  bool get isLargeTablet => MediaQuery.of(this).size.shortestSide >= 720;

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;
}
