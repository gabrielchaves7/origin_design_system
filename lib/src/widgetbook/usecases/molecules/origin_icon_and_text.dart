import 'package:flutter/material.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/origin_design_system.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: OriginIconAndText)
Widget originIconAndText(BuildContext context) {
  return Column(
    children: [
      OriginIconAndText(
        iconPath: Assets.assets_origin_icon_circle_svg,
        texts: context.knobs.options(
          label: 'Error text',
          options: [
            const widgetbook.Option<List<Widget>>(
              label: 'With one text',
              value: [Text('One text')],
            ),
            const widgetbook.Option<List<Widget>>(
              label: 'With more than one text',
              value: [Text('One text'), Text('Two texts')],
            ),
          ],
        ),
        iconSize: context.knobs.options(
          label: 'Icon size',
          options: [
            const widgetbook.Option<OriginIconSize>(
              label: 'XSmall',
              value: OriginIconSize.xSmall,
            ),
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
      ),
    ],
  );
}
