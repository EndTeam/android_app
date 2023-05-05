import 'package:faker/faker.dart';
import 'package:ma_for_feip/products/models_dto/named_color/named_color.dart';

class MockNamedColor {
  List<NamedColorDTO> genColors(int max, [int min = 1]) {
    assert(min <= max);
    assert(min >= 1);
    return faker.randomGenerator.amount(
      (i) => NamedColorDTO(
        color: faker.randomGenerator.integer(0xFFFFFF, min: 0xFF000000),
        label: faker.color.color(),
      ),
      max,
      min: min,
    );
  }
}
