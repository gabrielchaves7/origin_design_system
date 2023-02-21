import 'package:flutter/material.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/origin_design_system.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginCard)
Widget originCard(BuildContext context) {
  return const OriginCard(
    child: OriginIcon(
      iconPath: Assets.assets_origin_icon_circle_svg,
    ),
  );
}
