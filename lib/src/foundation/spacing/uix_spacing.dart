import 'package:flutter/widgets.dart';

@immutable
class UixSpacing {
  const UixSpacing({
    this.xs = 4,
    this.sm = 8,
    this.md = 12,
    this.lg = 16,
    this.xl = 20,
    this.xxl = 24,
    this.huge = 32,
    this.massive = 40,
    this.giant = 48,
    this.ultra = 64,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double huge;
  final double massive;
  final double giant;
  final double ultra;
}
