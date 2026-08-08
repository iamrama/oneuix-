import 'package:flutter/material.dart';

class UixListItem {
  const UixListItem({
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
}

class UixList extends StatelessWidget {
  const UixList({
    super.key,
    required this.items,
  });

  final List<UixListItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.title),
          subtitle: item.subtitle != null ? Text(item.subtitle!) : null,
          leading: item.leading,
          trailing: item.trailing,
          onTap: item.onTap,
        );
      },
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemCount: items.length,
    );
  }
}
