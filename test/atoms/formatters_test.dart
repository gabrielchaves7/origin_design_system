import 'package:flutter_test/flutter_test.dart';
import 'package:origin_design_system/origin_design_system.dart';

void main() {
  testWidgets('should add comma when number has length 4', (tester) async {
    final numericTextFormatter = NumericTextFormatter();
    const oldValue = TextEditingValue(text: '500');
    const newValue = TextEditingValue(text: '5000');
    final result = numericTextFormatter.formatEditUpdate(oldValue, newValue);
    expect(result.text, equals('5,000'));
  });
  testWidgets('should NOT add comma when number has length 3', (tester) async {
    final numericTextFormatter = NumericTextFormatter();
    const oldValue = TextEditingValue(text: '50');
    const newValue = TextEditingValue(text: '500');
    final result = numericTextFormatter.formatEditUpdate(oldValue, newValue);
    expect(result.text, equals('500'));
  });

  testWidgets('should add two commas when number has length 7', (tester) async {
    final numericTextFormatter = NumericTextFormatter();
    const oldValue = TextEditingValue(text: '50');
    const newValue = TextEditingValue(text: '5000000');
    final result = numericTextFormatter.formatEditUpdate(oldValue, newValue);
    expect(result.text, equals('5,000,000'));
  });
}
