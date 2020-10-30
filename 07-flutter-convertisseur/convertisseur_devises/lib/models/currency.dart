enum Currency {
  EURO,
  DOLLAR,
  POUND_STERLING
}

Map<Currency, double> rate = {
  Currency.EURO: 1,
  Currency.DOLLAR: 1.16729,
  Currency.POUND_STERLING: 0.902694
};

Map<Currency, String> labels = {
  Currency.EURO: 'Euro',
  Currency.DOLLAR: 'Dollar',
  Currency.POUND_STERLING: 'Livre Sterling'
};

extension CurrencyExtension on Currency {
  String get label {
    return labels[this];
  }
}