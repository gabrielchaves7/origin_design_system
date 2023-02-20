import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/src/atoms/logo.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('renders Logo', (tester) async {
    await tester.pumpApp(const Logo());
    expect(find.byType(Logo), findsOneWidget);
  });
}
