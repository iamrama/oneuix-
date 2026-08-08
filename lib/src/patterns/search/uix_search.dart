import 'package:flutter/material.dart';

import '../../components/inputs/uix_search_field.dart';

class UixSearch extends StatelessWidget {
  const UixSearch({
    super.key,
    this.hintText,
    this.onChanged,
  });

  final String? hintText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return UixSearchField(hintText: hintText, onChanged: onChanged);
  }
}
