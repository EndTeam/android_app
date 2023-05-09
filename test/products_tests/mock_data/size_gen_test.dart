import 'package:flutter_test/flutter_test.dart';
import 'package:ma_for_feip/products/mock_data/mock_named_size.dart';

void main() {
  group('Named color mock test', () {
    final mock = MockNamedSize();

    test('Assertions test', () {
      expect(() => mock.genSizes(0), throwsA(isA<AssertionError>()));
      expect(() => mock.genSizes(1, 0), throwsA(isA<AssertionError>()));
      expect(() => mock.genSizes(99999), throwsA(isA<AssertionError>()));
    });

    test('Amounts test', () {
      var colors = mock.genSizes();
      expect(colors.length, inInclusiveRange(1, 5));

      colors = mock.genSizes(5, 5);
      expect(colors.length, 5);
    });

    test('Fields test', () {
      final size = mock.genSizes(7, 7);
      for (var s in size) {
        expect(s.label.length, isPositive);
        expect(['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL'].join(' '),
            contains(s.label));
      }
    });
  });
}
