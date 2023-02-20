import 'package:flutter/material.dart';
import 'package:origin_design_system/src/atoms/colors.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;

import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookApp.material(
  name: 'Origin Design System',
  frames: [
    WidgetbookFrame(
      name: 'Widgetbook',
      allowsDevices: true,
    ),
    WidgetbookFrame(
      name: 'None',
      allowsDevices: false,
    ),
  ],
  devices: [
    Desktop.desktop720p,
    Desktop.desktop1080p,
    Desktop.desktop4k,
    Apple.iPhone12,
    Apple.iPhone6,
    Apple.iPhone8Plus
  ],
  textScaleFactors: [
    1,
    2,
    3,
  ],
  foldersExpanded: true,
  widgetsExpanded: true,
)
@WidgetbookScaffoldBuilder()
Widget scaffoldBuilder(BuildContext context, WidgetbookFrame frame, Widget child) {
  return Scaffold(
    backgroundColor: context.knobs.options(
      label: 'Background color',
      options: [
        const widgetbook.Option<Color>(
          label: 'White',
          value: OriginColors.background,
        ),
        const widgetbook.Option<Color>(
          label: 'Black',
          value: Colors.black,
        ),
      ],
    ),
    body: Center(child: child),
  );
}

@WidgetbookTheme(name: 'Dark', isDefault: true)
ThemeData getDarkTheme() => ThemeData(
      primarySwatch: Colors.blue,
    );
