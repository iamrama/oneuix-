import 'package:flutter/material.dart';

import '../../theme/uix_theme.dart';

class UixCard extends StatelessWidget {
  const UixCard({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = UixThemeScope.of(context);
    return Card(
      elevation: theme.elevation.sm,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(theme.radius.lg),
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(theme.spacing.lg),
        child: child,
      ),
    );
  }
}
