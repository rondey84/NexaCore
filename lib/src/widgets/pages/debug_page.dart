import 'package:flutter/material.dart';
import '/src/extensions/extensions.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({super.key, this.children = const []});

  final List<DebugCategory> children;

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Page'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: [24, 16].edgeInsetSymmetrical,
          itemBuilder: (_, index) => widget.children[index],
          separatorBuilder: (_, __) => 40.verticalGap,
          itemCount: widget.children.length,
        ),
      ),
    );
  }
}

class DebugCategory extends StatelessWidget {
  const DebugCategory({
    super.key,
    required this.title,
    this.children = const [],
    this.titleStyle,
    this.titleColor,
    this.titleLinesColor,
    this.titleAndLinesGap,
  });

  // Main Properties
  final String title;
  final List<Widget> children;

  // Design Properties
  final TextStyle? titleStyle;
  final Color? titleColor;
  final Color? titleLinesColor;
  final double? titleAndLinesGap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Row(
            children: [
              Expanded(
                child: Divider(color: titleLinesColor ?? Colors.black26),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: titleAndLinesGap ?? 10.0),
                child: Text(
                  title,
                  style: titleStyle?.copyWith(color: titleColor) ??
                      TextStyle(
                        color: titleColor ?? Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                ),
              ),
              Expanded(
                child: Divider(color: titleLinesColor ?? Colors.black26),
              ),
            ],
          ),
        ),
        4.verticalGap,
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, idx) => children[idx],
            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
            itemCount: children.length,
          ),
        ),
      ],
    );
  }
}
