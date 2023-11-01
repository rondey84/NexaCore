import 'package:flutter/painting.dart';

import '/src/extensions/extensions.dart';

part 'pika_icons/check.dart';
part 'pika_icons/chevron.dart';
part 'pika_icons/cross.dart';
part 'pika_icons/edit.dart';
part 'pika_icons/filter.dart';
part 'pika_icons/home.dart';
part 'pika_icons/log.dart';
part 'pika_icons/paint_brush.dart';
part 'pika_icons/setting.dart';
part 'pika_icons/social.dart';

enum PikaIcons {
  checkTick,
  checkTickCircle,
  checkTickCircleBroken,
  checkTickSquare,
  checkTickSquareBroken,
  chevronDown,
  chevronLeft,
  chevronRight,
  chevronUp,
  cross,
  crossCircle,
  crossSquare,
  editPencil,
  editSwoosh,
  filterHorizontal,
  filterVertical,
  home,
  homeSimple,
  logIn,
  logOut,
  settings,
  socialDiscord,
  socialFacebook,
  socialInstagram,
  socialTwitter,
  paintBrush,
  ;

  String getCode({Color? color, int? stroke}) {
    final iconColor = (color ?? const Color(0xFF1C1B1F)).toRGBACode;

    final width = stroke ?? 2;

    return switch (this) {
      checkTick => _Check.tick(color: iconColor, strokeWidth: width),
      checkTickCircle => _Check.circle(color: iconColor, strokeWidth: width),
      checkTickCircleBroken => _Check.circleBroken(
          color: iconColor,
          strokeWidth: width,
        ),
      checkTickSquare => _Check.square(color: iconColor, strokeWidth: width),
      checkTickSquareBroken => _Check.squareBroken(
          color: iconColor,
          strokeWidth: width,
        ),
      chevronDown => _Chevron.down(color: iconColor, strokeWidth: width),
      chevronLeft => _Chevron.left(color: iconColor, strokeWidth: width),
      chevronRight => _Chevron.right(color: iconColor, strokeWidth: width),
      chevronUp => _Chevron.up(color: iconColor, strokeWidth: width),
      cross => _Cross.cross(color: iconColor, strokeWidth: width),
      crossCircle => _Cross.circle(color: iconColor, strokeWidth: width),
      crossSquare => _Cross.square(color: iconColor, strokeWidth: width),
      editPencil => _Edit.pencil(color: iconColor, strokeWidth: width),
      editSwoosh => _Edit.pencilSwoosh(color: iconColor, strokeWidth: width),
      filterHorizontal => _Filter.horizontal(
          color: iconColor,
          strokeWidth: width,
        ),
      filterVertical => _Filter.vertical(color: iconColor, strokeWidth: width),
      home => _Home.home(color: iconColor, strokeWidth: width),
      homeSimple => _Home.simple(color: iconColor, strokeWidth: width),
      logIn => _Log.inRight(color: iconColor, strokeWidth: width),
      logOut => _Log.outRight(color: iconColor, strokeWidth: width),
      settings => _Setting.one(color: iconColor, strokeWidth: width),
      socialDiscord => _Social.discord(color: iconColor, strokeWidth: width),
      socialFacebook => _Social.facebook(color: iconColor, strokeWidth: width),
      socialInstagram =>
        _Social.instagram(color: iconColor, strokeWidth: width),
      socialTwitter => _Social.twitter(color: iconColor, strokeWidth: width),
      paintBrush => _PaintBrush.brush(color: iconColor, strokeWidth: width),
    };
  }
}
