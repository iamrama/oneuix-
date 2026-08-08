import 'package:flutter/material.dart';

class UixDialog {
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String description,
    String confirmLabel = 'Continue',
    String cancelLabel = 'Cancel',
    VoidCallback? onConfirm,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(cancelLabel),
            ),
            FilledButton(
              onPressed: () {
                onConfirm?.call();
                Navigator.of(context).pop();
              },
              child: Text(confirmLabel),
            ),
          ],
        );
      },
    );
  }
}
