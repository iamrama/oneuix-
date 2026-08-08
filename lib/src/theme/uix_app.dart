import 'package:flutter/material.dart';

import 'uix_config.dart';
import 'uix_theme.dart';
import 'uix_theme_mode.dart';

class UixApp extends StatelessWidget {
  UixApp({
    super.key,
    required this.child,
    UixTheme? theme,
    this.darkTheme,
    this.themeMode = UixThemeMode.system,
    this.config = const UixConfig(),
  }) : theme = theme ?? UixTheme.light();

  final Widget child;
  final UixTheme theme;
  final UixTheme? darkTheme;
  final UixThemeMode themeMode;
  final UixConfig config;

  @override
  Widget build(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final activeBrightness = switch (themeMode) {
      UixThemeMode.light => Brightness.light,
      UixThemeMode.dark => Brightness.dark,
      UixThemeMode.system => platformBrightness,
    };

    final activeTheme = activeBrightness == Brightness.dark
        ? (darkTheme ?? UixTheme.dark(primaryColor: theme.colors.primary))
        : theme;

    const rtlLangs = {'ar', 'fa', 'he', 'ur'};
    final textDirection = config.enableRtl && config.locale != null
      ? rtlLangs.contains(config.locale!.languageCode)
            ? TextDirection.rtl
            : TextDirection.ltr
        : Directionality.maybeOf(context) ?? TextDirection.ltr;

    return UixThemeScope(
      theme: activeTheme,
      child: Directionality(
        textDirection: textDirection,
        child: Theme(data: activeTheme.toMaterialTheme(activeBrightness), child: child),
      ),
    );
  }
}
