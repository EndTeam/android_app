import 'package:flutter_test/flutter_test.dart';
import 'package:ma_for_feip/products/service/mock_products_service.dart';

void main() {
  group('Mock product service tests', () {
    final service = MockProductsService();

    test('Generate products test', () async {
      final products = await service.getProducts();
      expect(products.length, isPositive);
    });

    test('Get product by id', () async {
      final products = await service.getProducts();
      for (var prod in products) {
        final byId = await service.getProductByID(prod.id);
        expect(byId, prod);
      }
    });
  });
}
