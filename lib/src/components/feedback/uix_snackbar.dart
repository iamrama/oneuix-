import 'package:flutter/material.dart';

class UixSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), action: action),
    );
  }
}
