import 'package:flutter_test/flutter_test.dart';
import 'package:ma_for_feip/products/mock_data/mock_product.dart';

void main() {
  group('Products mock test', () {
    final mock = MockProduct();

    test('Assertions test', () {
      expect(() => mock.genProducts(0), throwsA(isA<AssertionError>()));
      expect(() => mock.genProducts(1, 0), throwsA(isA<AssertionError>()));
      expect(() => mock.genProducts(-1), throwsA(isA<AssertionError>()));
      expect(() => mock.genProducts(5, 6), throwsA(isA<AssertionError>()));
    });

    test('Amounts test', () {
      var products = mock.genProducts(10);
      expect(products.length, inInclusiveRange(1, 10));

      products = mock.genProducts(5, 5);
      expect(products.length, 5);
    });

    test('Fields test', () {
      final product = mock.genProducts(1, 1).first;

      expect(product.id, isNonNegative);
      expect(product.name.length, isPositive);
      expect(product.imageColor.length, isPositive);
      expect(product.cost, greaterThan(product.saleCost!));
      expect(product.size.length, isPositive);
      expect(product.description.length, isPositive);
    });
  });
}
