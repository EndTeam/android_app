import 'package:flutter_test/flutter_test.dart';
import 'package:ma_for_feip/products/mock_data/mock_named_color.dart';

void main() {
  group('Named color mock test', () {
    final mock = MockNamedColor();

    test('Assertions test', () {
      expect(() => mock.genColors(0), throwsA(isA<AssertionError>()));
      expect(() => mock.genColors(1, 0), throwsA(isA<AssertionError>()));
    });

    test('Amounts test', () {
      var colors = mock.genColors(10, 1);
      expect(colors.length, inInclusiveRange(1, 10));

      colors = mock.genColors(5, 5);
      expect(colors.length, 5);
    });

    test('Fields test', () {
      final color = mock.genColors(1).first;
      expect(color.name.isNotEmpty, true);
      expect(color.color, inInclusiveRange(0xFF000000, 0xFFFFFFFF));
    });
  });
}
