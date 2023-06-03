import 'package:faker/faker.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';
import 'package:ma_for_feip/products/mock_data/mock_named_color.dart';
import 'package:ma_for_feip/products/mock_data/mock_named_size.dart';

class MockProduct {
  final _mockColor = MockNamedColor();
  final _mockSize = MockNamedSize();

  List<ProductModelDTO> genProducts(int max, [int min = 1]) {
    assert(min <= max);
    assert(min >= 1);

    return faker.randomGenerator
        .amount((i) => _genNextProduct(i), max, min: min);
  }

  ProductModelDTO _genNextProduct(int id) {
    final name = faker.company.name();
    final images = [
      'https://shop-cdn1-2.vigbo.tech/shops/49937/products/19627396/images/2-53ebac4df3bdde822da29161dc662a61.JPG'
    ];
    final tags = faker.randomGenerator.amount<String>(
      (i) => faker.randomGenerator.string(20),
      10,
      min: 1,
    );
    final isNew = faker.randomGenerator.boolean();
    final cost = faker.randomGenerator.integer(10000000, min: 1000);
    final oldCost = faker.randomGenerator.integer(100000000, min: cost + 1);
    final colors = _mockColor.genColors(10);
    final sizes = _mockSize.genSizes();
    final description =
        faker.lorem.sentences(faker.randomGenerator.integer(10, min: 2));
    return ProductModelDTO(
      id: id,
      name: name,
      images: images,
      tags: tags,
      isNew: isNew,
      cost: cost,
      oldCost: oldCost,
      colors: colors,
      sizes: sizes,
      description: description,
    );
  }
}
