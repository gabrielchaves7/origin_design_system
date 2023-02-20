import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/src/atoms/origin_logo.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders origin logo', (tester) async {
    await tester.pumpApp(const OriginLogo());
    expect(find.byType(OriginLogo), findsOneWidget);
  });
}
