import 'package:flutter/material.dart';

import '../../theme/uix_theme.dart';

enum UixButtonType { primary, secondary, outlined, text, destructive }
enum UixControlState { enabled, loading, disabled, success, error, readOnly, focused, selected }

class UixButton extends StatelessWidget {
  const UixButton({
    super.key,
    required this.label,
    this.onPressed,
    this.type = UixButtonType.primary,
    this.state = UixControlState.enabled,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final UixButtonType type;
  final UixControlState state;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = UixThemeScope.of(context);
    final enabled = state != UixControlState.loading &&
        state != UixControlState.disabled &&
        state != UixControlState.readOnly;

    final child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (state == UixControlState.loading)
          const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        else if (icon != null)
          Icon(icon, size: 18),
        if (state == UixControlState.loading || icon != null) const SizedBox(width: 8),
        Text(label, style: theme.typography.button),
      ],
    );

    switch (type) {
      case UixButtonType.primary:
        return FilledButton(
          onPressed: enabled ? onPressed : null,
          style: FilledButton.styleFrom(
            backgroundColor: theme.colors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(theme.radius.md),
            ),
          ),
          child: child,
        );
      case UixButtonType.secondary:
        return FilledButton.tonal(
          onPressed: enabled ? onPressed : null,
          child: child,
        );
      case UixButtonType.outlined:
        return OutlinedButton(
          onPressed: enabled ? onPressed : null,
          child: child,
        );
      case UixButtonType.text:
        return TextButton(
          onPressed: enabled ? onPressed : null,
          child: child,
        );
      case UixButtonType.destructive:
        return FilledButton(
          onPressed: enabled ? onPressed : null,
          style: FilledButton.styleFrom(backgroundColor: theme.colors.error),
          child: child,
        );
    }
  }
}
