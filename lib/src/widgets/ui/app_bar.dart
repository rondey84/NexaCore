import 'package:flutter/material.dart';
import '/src/src.dart';

class UIAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UIAppBar({
    super.key,
    this.actions = const [],
    this.title,
    this.titleSpacing,
    this.centerTitle = true,
    this.bottom,
    this.flexibleSpace,
    this.backgroundColor,
    this.iconTheme,
    this.titleTextStyle,
  });

  final List<Widget> actions;
  final Widget? title;
  final double? titleSpacing;
  final bool centerTitle;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;
  final Color? backgroundColor;
  final IconThemeData? iconTheme;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      iconTheme: iconTheme,
      title: title,
      titleTextStyle: titleTextStyle,
      centerTitle: centerTitle,
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      actions: actions.isEmpty
          ? null
          : [
              ...actions,
              Insets.page.horizontalGap,
            ],
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
