class Size {
  Size._(this.size, this.minSize, this.maxSize);

  final String size;
  final int minSize;
  final int maxSize;

  static Size xs(bool male) => male ? maleSizes[0] : femaleSizes[0];

  static Size s(bool male) => male ? maleSizes[1] : femaleSizes[1];

  static Size m(bool male) => male ? maleSizes[2] : femaleSizes[2];

  static Size l(bool male) => male ? maleSizes[3] : femaleSizes[3];

  static Size xl(bool male) => male ? maleSizes[4] : femaleSizes[4];

  static Size xxl(bool male) => male ? maleSizes[5] : femaleSizes[5];

  static Size xxxl(bool male) => male ? maleSizes[6] : femaleSizes[6];

  static List<Size> maleSizes = [
    Size._('XS', 40, 42),
    Size._('S', 42, 44),
    Size._('M', 46, 46),
    Size._('L', 46, 50),
    Size._('xl', 52, 54),
    Size._('xxl', 54, 56),
    Size._('xxxl', 56, 58),
  ];

  static List<Size> femaleSizes = [
    Size._('XS', 38, 40),
    Size._('S', 42, 44),
    Size._('M', 44, 44),
    Size._('L', 46, 48),
    Size._('xl', 48, 50),
    Size._('xxl', 50, 52),
    Size._('xxxl', 52, 54),
  ];
}
