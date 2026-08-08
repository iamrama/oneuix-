import 'package:flutter/material.dart';

import '../filters/uix_filter.dart';
import 'uix_search.dart';

class UixSearchFilter extends StatelessWidget {
  const UixSearchFilter({
    super.key,
    this.onQueryChanged,
    required this.filters,
    required this.onApplyFilters,
  });

  final ValueChanged<String>? onQueryChanged;
  final List<UixFilterOption> filters;
  final ValueChanged<List<UixFilterOption>> onApplyFilters;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UixSearch(onChanged: onQueryChanged),
        const SizedBox(height: 12),
        UixFilter(options: filters, onApply: onApplyFilters),
      ],
    );
  }
}
