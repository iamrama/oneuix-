import 'package:flutter/material.dart';

import '../../components/inputs/uix_checkbox.dart';

class UixFilterOption {
  const UixFilterOption({required this.label, this.selected = false});

  final String label;
  final bool selected;

  UixFilterOption copyWith({String? label, bool? selected}) {
    return UixFilterOption(
      label: label ?? this.label,
      selected: selected ?? this.selected,
    );
  }
}

class UixFilter extends StatefulWidget {
  const UixFilter({
    super.key,
    required this.options,
    required this.onApply,
  });

  final List<UixFilterOption> options;
  final ValueChanged<List<UixFilterOption>> onApply;

  @override
  State<UixFilter> createState() => _UixFilterState();
}

class _UixFilterState extends State<UixFilter> {
  late List<UixFilterOption> _options;

  @override
  void initState() {
    super.initState();
    _options = widget.options;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < _options.length; i++)
          UixCheckbox(
            value: _options[i].selected,
            label: _options[i].label,
            onChanged: (value) {
              setState(() {
                _options[i] = _options[i].copyWith(selected: value ?? false);
              });
            },
          ),
        const SizedBox(height: 12),
        FilledButton(
          onPressed: () => widget.onApply(_options),
          child: const Text('Apply Filters'),
        ),
      ],
    );
  }
}
