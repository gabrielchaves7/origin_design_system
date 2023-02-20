import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/src/atoms/origin_logo.dart';
import 'package:origin_design_system/src/organisms/origin_page.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin app bar', (tester) async {
    await tester.pumpApp(
      const OriginPage(
        body: Text('Some text'),
      ),
    );
    expect(find.byType(OriginPage), findsOneWidget);
    expect(find.byType(OriginLogo), findsOneWidget);
    expect(find.text('Some text'), findsOneWidget);
  });
}
