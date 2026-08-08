import 'package:flutter/material.dart';

import '../../components/feedback/uix_avatar.dart';

class UixProfile extends StatelessWidget {
  const UixProfile({
    super.key,
    required this.name,
    required this.email,
    this.initials = 'U',
    this.actions = const [],
  });

  final String name;
  final String email;
  final String initials;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            UixAvatar(initials: initials, size: 52),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.titleLarge),
                Text(email),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...actions,
      ],
    );
  }
}
