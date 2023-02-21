import 'package:flutter/material.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/src/atoms/origin_icon.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginIcon)
Widget originIcon(BuildContext context) {
  return OriginIcon(
    iconPath: context.knobs.options(
      label: 'Icon',
      options: [
        const widgetbook.Option<String>(
          label: 'Origin icon',
          value: Assets.assets_origin_icon_circle_svg,
        ),
        const widgetbook.Option<String>(
          label: 'Dollar sign',
          value: Assets.assets_dollar_sign_svg,
        ),
      ],
    ),
    size: context.knobs.options(
      label: 'Size',
      options: [
        const widgetbook.Option<OriginIconSize>(
          label: 'Small',
          value: OriginIconSize.small,
        ),
        const widgetbook.Option<OriginIconSize>(
          label: 'Medium',
          value: OriginIconSize.medium,
        ),
        const widgetbook.Option<OriginIconSize>(
          label: 'Large',
          value: OriginIconSize.large,
        ),
      ],
    ),
  );
}
