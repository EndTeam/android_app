import 'package:faker/faker.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';
import 'package:ma_for_feip/products/models_dto/product_model/product_model.dart';
import 'package:ma_for_feip/products/service/abstract_products_service.dart';

class MockProductsService extends AbstractProductsService {
  static List<ProductModelDTO>? _products;

  @override
  Future<ProductModelDTO> getProductByID(int id) async {
    return Future(() => _products![id]);
  }

  @override
  Future<List<ProductModelDTO>> getProducts() {
    _products ??= _genNData(10);
    return Future(() => _products!);
  }

  List<ProductModelDTO> _genNData(int n) {
    final prods = <ProductModelDTO>[];
    for (int i = 0; i < n; ++i) {
      final name = faker.company.name();
      final images = faker.randomGenerator.amount(
        (i) => faker.image.image(
          width: 600,
          height: 300,
          keywords: ['wear', 'clothes'],
          random: true,
        ),
        10,
        min: 1,
      );
      final tags = faker.randomGenerator.amount<String>(
        (i) => faker.randomGenerator.string(20),
        10,
        min: 1,
      );

      final isNew = faker.randomGenerator.boolean();
      final cost = faker.randomGenerator.integer(10000000, min: 1000);
      final oldCost = faker.randomGenerator.integer(100000000, min: cost + 1);
      final colors = faker.randomGenerator.amount(
        (i) => NamedColorDTO(
          color: faker.randomGenerator.integer(0xFFFFFF, min: 0xFF000000),
          label: faker.color.color(),
        ),
        10,
        min: 2,
      );
      final sizeList = ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
      sizeList.shuffle();

      final sizes = faker.randomGenerator.amount(
        (i) => NamedSizeDTO(label: sizeList[i]),
        sizeList.length,
        min: 1,
      );
      final description =
          faker.lorem.sentences(faker.randomGenerator.integer(10, min: 2));

      prods.add(ProductModelDTO(
        id: i,
        name: name,
        images: images,
        tags: tags,
        isNew: isNew,
        cost: cost,
        oldCost: oldCost,
        colors: colors,
        sizes: sizes,
        description: description,
      ));
    }
    return prods;
  }
}
