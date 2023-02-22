import 'package:flutter/material.dart';
import 'package:origin_design_system/origin_design_system.dart';

/// Widget to render an icon on the left and text on the right
class OriginIconAndText extends StatelessWidget {
  /// Widget to render an icon on the left and text on the right
  const OriginIconAndText({
    required this.iconPath,
    required this.texts,
    this.iconSize = OriginIconSize.large,
    super.key,
  });

  /// Path to the icon
  final String iconPath;

  /// Texts to be displayed on the right of the icon
  final List<Widget> texts;

  /// The size of the icon
  final OriginIconSize iconSize;

  @override
  Widget build(BuildContext context) {
    Widget widget = Column(
      children: [
        OriginIcon(
          iconPath: iconPath,
          size: iconSize,
        ),
        const SizedBox(height: OriginSpacing.xx),
        ...texts
      ],
    );
    if (MediaQuery.of(context).size.width > 544) {
      widget = _desktopLayout();
    }

    return widget;
  }

  Widget _desktopLayout() {
    Widget widget = ListTile(
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      leading: OriginIcon(
        iconPath: iconPath,
        size: iconSize,
      ),
      title: texts.first,
    );
    if (texts.length > 1) {
      widget = Row(
        children: [
          OriginIcon(
            iconPath: iconPath,
            size: iconSize,
          ),
          const SizedBox(
            width: OriginSpacing.xx,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: texts,
          )
        ],
      );
    }

    return widget;
  }
}
