extension Cost on int {
  String getSpacingString() {
    final symbols = toString().split('');
    if (symbols.length < 2) {
      return '${(this / 100.0).toStringAsFixed(2)} ₽';
    } else {
      for (int i = symbols.length - 5; i > 0; i -= 3) {
        symbols.insert(i, ' ');
      }
      symbols.insert(symbols.length - 2, ',');
      if (symbols.sublist(symbols.length - 2, symbols.length).join() == '00') {
        return '${symbols.sublist(0, symbols.length - 3).join()} ₽';
      }
      return '${symbols.join()} ₽';
    }
  }
}
