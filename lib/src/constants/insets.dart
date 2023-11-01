import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Insets {
  /// 0
  static const double none = 0;

  /// 2
  static const double xxxs = 2;

  /// 4
  static const double xxs = 4;

  /// 8
  static const double xs = 8;

  /// 16
  static const double sm = 16;

  /// 24
  static const double md = 24;

  /// 32
  static const double lg = 32;

  /// 48
  static const double xl = 48;

  /// 56
  static const double xxl = 56;

  /// 64
  static const double xxxl = 64;

  /// For screen width greater than 360 uses md = 24, else for smaller uses sm = 16
  static double get page => 1.sw > 400 ? md : sm;
}
