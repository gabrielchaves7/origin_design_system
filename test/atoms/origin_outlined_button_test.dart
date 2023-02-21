import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:origin_design_system/origin_design_system.dart';

import '../helpers/pump_app.dart';

class MockOnPressed extends Mock {
  void call();
}

void main() {
  testWidgets('renders origin button', (tester) async {
    await tester.pumpApp(
      OriginOutlinedButton(
        onPressed: () {},
        child: const SizedBox(),
      ),
    );
    expect(find.byType(OriginOutlinedButton), findsOneWidget);
  });

  testWidgets('renders origin button child', (tester) async {
    final mockedOnPressed = MockOnPressed();
    when(mockedOnPressed.call).thenReturn(null);

    await tester.pumpApp(
      OriginOutlinedButton(
        onPressed: mockedOnPressed.call,
        child: const Text('Continue'),
      ),
    );
    expect(find.text('Continue'), findsOneWidget);
    await tester.tap(find.byType(OriginOutlinedButton));
    verify(mockedOnPressed.call).called(1);
  });
}
