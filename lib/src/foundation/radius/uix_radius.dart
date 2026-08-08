import 'package:flutter/widgets.dart';

@immutable
class UixRadius {
  const UixRadius({
    this.sm = 8,
    this.md = 12,
    this.lg = 16,
    this.xl = 24,
    this.round = 999,
  });

  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double round;
}
