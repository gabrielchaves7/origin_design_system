import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/origin_icon.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginIcon)
Widget originIcon(BuildContext context) {
  return OriginIcon(
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
    shape: context.knobs.options(
      label: 'Shape',
      options: [
        const widgetbook.Option<OriginIconShape>(
          label: 'Circle',
          value: OriginIconShape.circle,
        ),
      ],
    ),
  );
}
