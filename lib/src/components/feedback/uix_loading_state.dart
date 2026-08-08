import 'package:flutter/material.dart';

class UixLoadingState extends StatelessWidget {
  const UixLoadingState({
    super.key,
    this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        if (label != null) ...[
          const SizedBox(height: 12),
          Text(label!),
        ],
      ],
    );
  }
}

typedef UixLoader = UixLoadingState;
