import 'package:flutter/widgets.dart';

@immutable
class UixConfig {
  const UixConfig({
    this.locale,
    this.supportedLocales = const [Locale('en')],
    this.enableRtl = true,
    this.minTouchTarget = 44,
  });

  final Locale? locale;
  final List<Locale> supportedLocales;
  final bool enableRtl;
  final double minTouchTarget;
}
