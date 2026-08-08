import 'package:flutter/material.dart';

class UixSemantics extends StatelessWidget {
  const UixSemantics({
    super.key,
    required this.label,
    required this.child,
    this.button = false,
  });

  final String label;
  final Widget child;
  final bool button;

  @override
  Widget build(BuildContext context) {
    return Semantics(label: label, button: button, child: child);
  }
}

class UixTouchTarget extends StatelessWidget {
  const UixTouchTarget({
    super.key,
    required this.child,
    this.minSize = 44,
  });

  final Widget child;
  final double minSize;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: minSize, minHeight: minSize),
      child: child,
    );
  }
}
