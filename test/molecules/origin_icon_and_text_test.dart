import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/origin_design_system.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets(
      'Should render text and icon properly when texts has only one widget',
      (tester) async {
    await tester.pumpApp(
      const OriginIconAndText(
        iconPath: Assets.assets_origin_icon_circle_svg,
        texts: [Text('One text')],
      ),
    );
    expect(find.byType(OriginIconAndText), findsOneWidget);
    expect(find.byType(OriginIcon), findsOneWidget);
    expect(find.text('One text'), findsOneWidget);
  });

  testWidgets(
      'Should render text and icon properly when texts has more than one widget',
      (tester) async {
    await tester.pumpApp(
      const OriginIconAndText(
        iconPath: Assets.assets_origin_icon_circle_svg,
        texts: [Text('One text'), Text('Two text')],
      ),
    );
    expect(find.byType(OriginIconAndText), findsOneWidget);
    expect(find.byType(OriginIcon), findsOneWidget);
    expect(find.text('One text'), findsOneWidget);
    expect(find.text('Two text'), findsOneWidget);
  });
}
