import 'package:flutter/material.dart';

@immutable
class UixColors {
  const UixColors({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.textPrimary,
    required this.textSecondary,
    required this.error,
    required this.warning,
    required this.success,
  });

  final Color primary;
  final Color secondary;
  final Color background;
  final Color surface;
  final Color textPrimary;
  final Color textSecondary;
  final Color error;
  final Color warning;
  final Color success;

  factory UixColors.light({Color primary = const Color(0xFF0A66C2)}) {
    return UixColors(
      primary: primary,
      secondary: const Color(0xFF0E8A7B),
      background: const Color(0xFFF6F8FB),
      surface: Colors.white,
      textPrimary: const Color(0xFF101828),
      textSecondary: const Color(0xFF475467),
      error: const Color(0xFFB42318),
      warning: const Color(0xFFB54708),
      success: const Color(0xFF027A48),
    );
  }

  factory UixColors.dark({Color primary = const Color(0xFF4DA3FF)}) {
    return UixColors(
      primary: primary,
      secondary: const Color(0xFF4BD1BF),
      background: const Color(0xFF0C111D),
      surface: const Color(0xFF161B26),
      textPrimary: const Color(0xFFF2F4F7),
      textSecondary: const Color(0xFFD0D5DD),
      error: const Color(0xFFF97066),
      warning: const Color(0xFFFDB022),
      success: const Color(0xFF6CE9A6),
    );
  }

  UixColors copyWith({
    Color? primary,
    Color? secondary,
    Color? background,
    Color? surface,
    Color? textPrimary,
    Color? textSecondary,
    Color? error,
    Color? warning,
    Color? success,
  }) {
    return UixColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      success: success ?? this.success,
    );
  }
}
