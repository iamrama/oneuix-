import 'package:flutter/material.dart';

class UixCheckbox extends StatelessWidget {
  const UixCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final checkbox = Checkbox(value: value, onChanged: onChanged);
    if (label == null) return checkbox;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [checkbox, Flexible(child: Text(label!))],
    );
  }
}
