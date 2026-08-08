import 'package:flutter/material.dart';

import '../buttons/uix_button.dart';

class UixErrorState extends StatelessWidget {
  const UixErrorState({
    super.key,
    required this.title,
    required this.description,
    this.actionLabel,
    this.onAction,
  });

  final String title;
  final String description;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.error_outline, size: 56, color: Theme.of(context).colorScheme.error),
        const SizedBox(height: 12),
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(description, textAlign: TextAlign.center),
        if (actionLabel != null && onAction != null) ...[
          const SizedBox(height: 16),
          UixButton(label: actionLabel!, onPressed: onAction),
        ],
      ],
    );
  }
}
