import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/src/atoms/origin_icon.dart';
import 'package:origin_design_system/src/atoms/origin_logo.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';
import 'package:origin_design_system/src/molecules/origin_text_form_field.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('Should render text field properly when icon is null', (tester) async {
    await tester.pumpApp(
      const OriginTextField(
        label: 'One label',
      ),
    );
    expect(find.byType(OriginTextField), findsOneWidget);
    expect(find.text('One label'), findsOneWidget);
  });

  testWidgets('Should render text field properly when icon is set', (tester) async {
    await tester.pumpApp(
      const OriginTextField(
        label: 'One label',
        icon: OriginIcon(iconPath: Assets.assets_dollar_sign_svg),
      ),
    );
    expect(find.byType(OriginTextField), findsOneWidget);
    expect(find.byType(OriginIcon), findsOneWidget);
    expect(find.text('One label'), findsOneWidget);
  });
}
