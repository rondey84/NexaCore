import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get horizontalGap => SizedBox(width: toDouble());
  SizedBox get verticalGap => SizedBox(height: toDouble());
}

extension OffsetExtension on num {
  Offset get offset => Offset(toDouble(), toDouble());
}

extension EdgeInsetsExtension on num {
  EdgeInsets get edgeInsetsT => EdgeInsets.only(top: toDouble());

  EdgeInsets get edgeInsetsB => EdgeInsets.only(bottom: toDouble());

  EdgeInsets get edgeInsetsL => EdgeInsets.only(left: toDouble());

  EdgeInsets get edgeInsetsR => EdgeInsets.only(right: toDouble());

  EdgeInsets get edgeInsetsV => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get edgeInsetsH => EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get edgeInsetsA => EdgeInsets.all(toDouble());
}

extension BorderRadiusExtension on num {
  BorderRadius get borderRadiusT =>
      BorderRadius.vertical(top: Radius.circular(r));

  BorderRadius get borderRadiusB =>
      BorderRadius.vertical(bottom: Radius.circular(r));

  BorderRadius get borderRadiusL =>
      BorderRadius.horizontal(left: Radius.circular(r));

  BorderRadius get borderRadiusR =>
      BorderRadius.horizontal(right: Radius.circular(r));

  BorderRadius get borderRadiusTL =>
      BorderRadius.only(topLeft: Radius.circular(r));

  BorderRadius get borderRadiusTR =>
      BorderRadius.only(topRight: Radius.circular(r));

  BorderRadius get borderRadiusBL =>
      BorderRadius.only(bottomLeft: Radius.circular(r));

  BorderRadius get borderRadiusBR =>
      BorderRadius.only(bottomRight: Radius.circular(r));

  BorderRadius get borderRadiusA => BorderRadius.all(Radius.circular(r));
}

extension ListNumExtensions on List<num> {
  /// First value is for vertical inset and Second value is for horizontal inset
  EdgeInsets get edgeInsetSymmetrical {
    assert(length == 2, 'The list can only have 2 elements');
    return EdgeInsets.symmetric(
      vertical: this[0].toDouble(),
      horizontal: this[1].toDouble(),
    );
  }

  EdgeInsets get edgeInsetsLTRB {
    assert(length == 4, 'The list must be have only 4 elements');
    return EdgeInsets.fromLTRB(
      this[0].toDouble(),
      this[1].toDouble(),
      this[2].toDouble(),
      this[3].toDouble(),
    );
  }

  Offset get offset => Offset(this[0].toDouble(), this[1].toDouble());
}
