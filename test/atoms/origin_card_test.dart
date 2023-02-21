import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/origin_design_system.dart';

import '../helpers/pump_app.dart';

void main() {
  testWidgets('should render origin card and child', (tester) async {
    await tester.pumpApp(
      const OriginCard(
        child: OriginLogo(),
      ),
    );
    expect(find.byType(OriginCard), findsOneWidget);
    expect(find.byType(OriginLogo), findsOneWidget);
  });
}
