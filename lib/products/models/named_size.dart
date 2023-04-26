class NamedSize {
  final String size;
  final int minSize;
  final int maxSize;

  const NamedSize._(this.size, this.minSize, this.maxSize);

  factory NamedSize.fromStringSize(String size) {
    assert(NamedSize._sizes.containsKey(size));
    return _sizes[size]!;
  }

  static const Map<String, NamedSize> _sizes = {
    'XS': NamedSize._('XS', 38, 40),
    'S': NamedSize._('S', 42, 44),
    'M': NamedSize._('M', 44, 44),
    'L': NamedSize._('L', 46, 48),
    'XL': NamedSize._('xl', 48, 50),
    'XXL': NamedSize._('xxl', 50, 52),
    'XXXL': NamedSize._('xxxl', 52, 54),
  };
}
