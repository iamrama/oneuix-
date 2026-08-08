import 'package:flutter/material.dart';

class UixRadio<T> extends StatelessWidget {
  const UixRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final selected = value == groupValue;
    final radio = InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(
          selected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
          size: 20,
        ),
      ),
    );
    if (label == null) return radio;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [radio, Flexible(child: Text(label!))],
    );
  }
}
