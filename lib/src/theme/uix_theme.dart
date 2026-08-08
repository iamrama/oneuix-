import 'package:flutter/material.dart';

import '../foundation/colors/uix_colors.dart';
import '../foundation/elevation/uix_elevation.dart';
import '../foundation/radius/uix_radius.dart';
import '../foundation/spacing/uix_spacing.dart';
import '../foundation/typography/uix_typography.dart';

@immutable
class UixTheme {
  UixTheme({
    Color primaryColor = const Color(0xFF0A66C2),
    UixColors? colors,
    UixTypography? typography,
    this.spacing = const UixSpacing(),
    this.radius = const UixRadius(),
    this.elevation = const UixElevation(),
  })  : colors = colors ?? UixColors.light(primary: primaryColor),
        typography = typography ?? UixTypography.fallback();

  factory UixTheme.light({Color primaryColor = const Color(0xFF0A66C2)}) {
    return UixTheme(
      colors: UixColors.light(primary: primaryColor),
      typography: UixTypography.fallback(),
    );
  }

  factory UixTheme.dark({Color primaryColor = const Color(0xFF4DA3FF)}) {
    return UixTheme(
      colors: UixColors.dark(primary: primaryColor),
      typography: UixTypography.fallback(),
    );
  }

  final UixColors colors;
  final UixTypography typography;
  final UixSpacing spacing;
  final UixRadius radius;
  final UixElevation elevation;

  UixTheme copyWith({
    UixColors? colors,
    UixTypography? typography,
    UixSpacing? spacing,
    UixRadius? radius,
    UixElevation? elevation,
  }) {
    return UixTheme(
      colors: colors ?? this.colors,
      typography: typography ?? this.typography,
      spacing: spacing ?? this.spacing,
      radius: radius ?? this.radius,
      elevation: elevation ?? this.elevation,
    );
  }

  ThemeData toMaterialTheme(Brightness brightness) {
    final c = colors;
    final scheme = ColorScheme(
      brightness: brightness,
      primary: c.primary,
      onPrimary: Colors.white,
      secondary: c.secondary,
      onSecondary: Colors.white,
      error: c.error,
      onError: Colors.white,
      surface: c.surface,
      onSurface: c.textPrimary,
      tertiary: c.success,
      onTertiary: Colors.white,
      primaryContainer: c.primary.withValues(alpha: 0.15),
      onPrimaryContainer: c.textPrimary,
      secondaryContainer: c.secondary.withValues(alpha: 0.15),
      onSecondaryContainer: c.textPrimary,
      errorContainer: c.error.withValues(alpha: 0.15),
      onErrorContainer: c.textPrimary,
      surfaceContainerHighest: c.background,
      onSurfaceVariant: c.textSecondary,
      outline: c.textSecondary.withValues(alpha: 0.35),
      outlineVariant: c.textSecondary.withValues(alpha: 0.2),
      shadow: Colors.black54,
      scrim: Colors.black54,
      inverseSurface: c.textPrimary,
      onInverseSurface: c.background,
      inversePrimary: c.primary,
    );

    return ThemeData(
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: c.background,
      textTheme: TextTheme(
        displayLarge: typography.display,
        headlineMedium: typography.heading,
        titleLarge: typography.title,
        bodyLarge: typography.body,
        labelLarge: typography.label,
        bodySmall: typography.caption,
      ),
      useMaterial3: true,
    );
  }
}

class UixThemeScope extends InheritedWidget {
  const UixThemeScope({
    super.key,
    required this.theme,
    required super.child,
  });

  final UixTheme theme;

  static UixTheme of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<UixThemeScope>();
    return scope?.theme ?? UixTheme.light();
  }

  @override
  bool updateShouldNotify(UixThemeScope oldWidget) => oldWidget.theme != theme;
}
