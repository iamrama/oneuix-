import 'package:flutter/material.dart';

import 'uix_text_field.dart';

class UixSearchField extends StatelessWidget {
  const UixSearchField({
    super.key,
    this.hintText,
    this.onChanged,
    this.controller,
  });

  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return UixTextField(
      controller: controller,
      hintText: hintText ?? 'Search',
      onChanged: onChanged,
    );
  }
}
