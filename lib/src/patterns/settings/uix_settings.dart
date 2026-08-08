import 'package:flutter/material.dart';

class UixSettingsItem {
  const UixSettingsItem({required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;
}

class UixSettings extends StatelessWidget {
  const UixSettings({
    super.key,
    required this.items,
  });

  final List<UixSettingsItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.title),
          trailing: const Icon(Icons.chevron_right),
          onTap: item.onTap,
        );
      },
    );
  }
}
