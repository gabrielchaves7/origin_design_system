import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';
import 'package:origin_design_system/src/organisms/origin_page.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin app bar', (tester) async {
    await tester.pumpApp(const OriginPage(
      body: Text('Some text'),
    ));
    expect(find.byType(OriginPage), findsOneWidget);
    expect(find.byType(OriginAppBar), findsOneWidget);
    expect(find.text('Some text'), findsOneWidget);
  });
}
