import 'package:flutter/material.dart';

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
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

@WidgetbookTheme(name: 'Dark', isDefault: true)
ThemeData getDarkTheme() => ThemeData(
      primarySwatch: Colors.blue,
    );
