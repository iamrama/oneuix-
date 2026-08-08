import 'package:flutter/material.dart';

class UixSwitch extends StatelessWidget {
  const UixSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final sw = Switch(value: value, onChanged: onChanged);
    if (label == null) return sw;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [sw, Flexible(child: Text(label!))],
    );
  }
}
