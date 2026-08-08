import 'package:flutter/material.dart';

import '../../theme/uix_theme.dart';

class UixTextField extends StatelessWidget {
  const UixTextField({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.enabled = true,
  });

  final String? label;
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = UixThemeScope.of(context);
    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      enabled: enabled,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        filled: true,
        fillColor: theme.colors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(theme.radius.md),
        ),
      ),
    );
  }
}
