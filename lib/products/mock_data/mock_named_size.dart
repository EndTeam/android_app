import 'package:faker/faker.dart';
import 'package:ma_for_feip/products/models_dto/named_size/named_size.dart';

class MockNamedSize {
  static const _sizeList = ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL'];

  List<NamedSizeDTO> genSizes([int min = 1, int max = 7]) {
    assert(max <= _sizeList.length);
    assert(min <= max);
    assert(min >= 1);

    final newList = List.from(_sizeList, growable: false)..shuffle();
    return faker.randomGenerator.amount(
      (i) => NamedSizeDTO(id: i, size: newList[i]),
      max,
      min: min,
    );
  }
}
