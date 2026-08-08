import 'package:flutter/widgets.dart';

class UixLocalizations {
  UixLocalizations(this.locale);

  final Locale locale;

  static UixLocalizations of(BuildContext context) {
    return Localizations.of<UixLocalizations>(context, UixLocalizations) ??
        UixLocalizations(const Locale('en'));
  }

  static const Map<String, Map<String, String>> _strings = {
    'en': {
      'search': 'Search',
      'retry': 'Retry',
      'continue': 'Continue',
      'cancel': 'Cancel',
    },
    'es': {
      'search': 'Buscar',
      'retry': 'Reintentar',
      'continue': 'Continuar',
      'cancel': 'Cancelar',
    },
  };

  String t(String key) {
    final language = locale.languageCode;
    return _strings[language]?[key] ?? _strings['en']?[key] ?? key;
  }
}

class UixLocalizationsDelegate extends LocalizationsDelegate<UixLocalizations> {
  const UixLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<UixLocalizations> load(Locale locale) async => UixLocalizations(locale);

  @override
  bool shouldReload(covariant LocalizationsDelegate<UixLocalizations> old) => false;
}
