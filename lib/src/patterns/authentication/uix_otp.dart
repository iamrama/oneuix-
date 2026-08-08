import 'package:flutter/material.dart';

import '../../components/buttons/uix_button.dart';

class UixOtp extends StatelessWidget {
  const UixOtp({
    super.key,
    required this.onSubmit,
    this.length = 6,
  });

  final ValueChanged<String> onSubmit;
  final int length;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          maxLength: length,
          decoration: const InputDecoration(labelText: 'OTP'),
        ),
        UixButton(label: 'Verify', onPressed: () => onSubmit(controller.text)),
      ],
    );
  }
}
