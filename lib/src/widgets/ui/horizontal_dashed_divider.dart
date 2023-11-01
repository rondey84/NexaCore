import 'package:flutter/material.dart';
import 'package:nexacore/src/extensions/extensions.dart';

class HorizontalDashedDivider extends StatelessWidget {
  const HorizontalDashedDivider({
    super.key,
    this.dashWidth = 3.0,
    this.height = 1,
    this.color,
    this.verticalPadding = 0.0,
  });
  final double dashWidth;
  final double height;
  final Color? color;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding.edgeInsetsV,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashHeight = height;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color ?? Colors.black26,
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
