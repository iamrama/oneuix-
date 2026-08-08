import 'package:flutter/material.dart';

import '../../components/buttons/uix_button.dart';
import '../../components/inputs/uix_password_field.dart';
import '../../components/inputs/uix_text_field.dart';

class UixLogin extends StatelessWidget {
  const UixLogin({
    super.key,
    required this.onSubmit,
    this.emailController,
    this.passwordController,
  });

  final void Function(String email, String password) onSubmit;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    final email = emailController ?? TextEditingController();
    final password = passwordController ?? TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        UixTextField(label: 'Email', hintText: 'name@example.com', controller: email),
        const SizedBox(height: 12),
        UixPasswordField(controller: password),
        const SizedBox(height: 16),
        UixButton(
          label: 'Login',
          onPressed: () => onSubmit(email.text, password.text),
        ),
      ],
    );
  }
}
