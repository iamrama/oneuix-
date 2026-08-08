import 'package:flutter/widgets.dart';

@immutable
class UixElevation {
  const UixElevation({
    this.none = 0,
    this.sm = 1,
    this.md = 3,
    this.lg = 6,
  });

  final double none;
  final double sm;
  final double md;
  final double lg;
}
