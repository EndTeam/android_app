class NamedSize {
  final int id;
  final String size;
  final int minSize;
  final int maxSize;

  const NamedSize._(this.id, this.size, this.minSize, this.maxSize);

  factory NamedSize.fromStringSize(String size, int id) {
    assert(NamedSize._sizes.containsKey(size));
    return _sizes[size]!.copyWithId(id);
  }

  static const Map<String, NamedSize> _sizes = {
    'XS': NamedSize._(0, 'XS', 38, 40),
    'S': NamedSize._(0, 'S', 42, 44),
    'M': NamedSize._(0, 'M', 44, 44),
    'L': NamedSize._(0, 'L', 46, 48),
    'XL': NamedSize._(0, 'XL', 48, 50),
    'XXL': NamedSize._(0, 'XXL', 50, 52),
    'XXXL': NamedSize._(0, 'XXXL', 52, 54),
  };

  NamedSize copyWithId(int id) {
    return NamedSize._(id, size, minSize, maxSize);
  }
}
