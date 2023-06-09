import 'package:faker/faker.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';

class MockNamedColor {
  List<NamedColorDTO> genColors(int max, [int min = 1]) {
    assert(min <= max);
    assert(min >= 1);
    return faker.randomGenerator.amount(
      (i) => NamedColorDTO(
        id: i,
        color: faker.randomGenerator.integer(0xFFFFFFFF, min: 0xFF000000),
        name: faker.color.color(),
      ),
      max,
      min: min,
    );
  }
}
