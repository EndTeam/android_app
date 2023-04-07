class NamedSize {
  NamedSize._(this.size, this.minSize, this.maxSize, this.isMale);

  final String size;
  final int minSize;
  final int maxSize;
  final bool isMale;

  static NamedSize xs(bool male) => male ? maleSizes[0] : femaleSizes[0];

  static NamedSize s(bool male) => male ? maleSizes[1] : femaleSizes[1];

  static NamedSize m(bool male) => male ? maleSizes[2] : femaleSizes[2];

  static NamedSize l(bool male) => male ? maleSizes[3] : femaleSizes[3];

  static NamedSize xl(bool male) => male ? maleSizes[4] : femaleSizes[4];

  static NamedSize xxl(bool male) => male ? maleSizes[5] : femaleSizes[5];

  static NamedSize xxxl(bool male) => male ? maleSizes[6] : femaleSizes[6];

  static List<NamedSize> maleSizes = [
    NamedSize._('XS', 40, 42, true),
    NamedSize._('S', 42, 44, true),
    NamedSize._('M', 46, 46, true),
    NamedSize._('L', 46, 50, true),
    NamedSize._('xl', 52, 54, true),
    NamedSize._('xxl', 54, 56, true),
    NamedSize._('xxxl', 56, 58, true),
  ];

  static List<NamedSize> femaleSizes = [
    NamedSize._('XS', 38, 40, false),
    NamedSize._('S', 42, 44, false),
    NamedSize._('M', 44, 44, false),
    NamedSize._('L', 46, 48, false),
    NamedSize._('xl', 48, 50, false),
    NamedSize._('xxl', 50, 52, false),
    NamedSize._('xxxl', 52, 54, false),
  ];
}
