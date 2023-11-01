import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/src/extensions/context_extension.dart';

class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView.builder({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.gridDelegate,
    this.phoneCrossAxisCount = 1,
    this.tabletCrossAxisCount,
    this.phoneChildAspectRatio,
    this.tabletChildAspectRatio,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
  })  : useWrap = false,
        generator = null,
        wrapAlignment = WrapAlignment.start,
        wrapDirection = Axis.horizontal;

  const ResponsiveGridView.wrap({
    super.key,
    required this.generator,
    required this.itemCount,
    this.wrapAlignment = WrapAlignment.start,
    this.wrapDirection = Axis.horizontal,
    this.phoneCrossAxisCount = 1,
    this.tabletCrossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.padding,
    this.physics,
  })  : useWrap = true,
        itemBuilder = null,
        gridDelegate = null,
        phoneChildAspectRatio = null,
        tabletChildAspectRatio = null,
        shrinkWrap = false;

  /// The number of children in the cross axis for `phone` display.
  /// Default is `1`.
  final int phoneCrossAxisCount;

  /// The number of children in the cross axis for `tablet` display.
  /// By default uses `phoneCrossAxisCount`
  final int? tabletCrossAxisCount;

  /// The ratio of the cross-axis to the main-axis extent of each child.
  final double? phoneChildAspectRatio;
  // The ratio of the cross-axis to the main-axis extent of each child.
  final double? tabletChildAspectRatio;

  final double mainAxisSpacing;
  final double crossAxisSpacing;

  /// Uses Wrap Widget instead of GridView. Defaults to false.
  ///
  /// When using Wrap it is required to pass [generator]
  /// &
  /// When using GridView it is required to pass [itemBuilder].
  final bool useWrap;

  // Wrap Widget
  final Widget Function(int)? generator;

  /// __NOTE:__ _Only works when [useWrap] is true_
  ///
  /// How the children within a run should be placed in the main axis.
  ///
  /// For example, if [alignment] is [WrapAlignment.center], the children in
  /// each run are grouped together in the center of their run in the main axis.
  ///
  /// Defaults to [WrapAlignment.start].
  final WrapAlignment wrapAlignment;

  /// __NOTE:__ _Only works when [useWrap] is true_
  ///
  /// The direction to use as the main axis.
  final Axis wrapDirection;

  // Grid View
  final SliverGridDelegate? gridDelegate;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final int itemCount;
  final Widget? Function(BuildContext, int)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    final bool isTablet = context.isTablet;

    if (useWrap) {
      return SingleChildScrollView(
        physics: physics,
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Wrap(
            direction: wrapDirection,
            alignment: wrapAlignment,
            spacing: mainAxisSpacing,
            runSpacing: crossAxisSpacing,
            children: List.generate(
              itemCount,
              (index) => LayoutBuilder(builder: (_, constraints) {
                final itemCount = (isTablet
                    ? tabletCrossAxisCount ?? phoneCrossAxisCount
                    : phoneCrossAxisCount);

                double availableWidth = constraints.maxWidth -
                    (itemCount - 1) * mainAxisSpacing -
                    1; // -1 helps in pixel issues with alignment for certain devices

                double itemWidth = availableWidth / itemCount;

                return SizedBox(
                  width: itemWidth,
                  child: generator!(index),
                );
              }),
            ),
          ),
        ),
      );
    }
    return GridView.builder(
      gridDelegate: gridDelegate ??
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isTablet
                ? tabletCrossAxisCount ?? phoneCrossAxisCount
                : phoneCrossAxisCount,
            childAspectRatio: 1.sw /
                (isTablet
                    ? tabletChildAspectRatio ?? 1.sw
                    : phoneChildAspectRatio ?? 1.sw),
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
          ),
      padding: padding,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemCount: itemCount,
      itemBuilder: itemBuilder!,
    );
  }
}
