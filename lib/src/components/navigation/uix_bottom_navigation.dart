import 'package:flutter/material.dart';

class UixNavigationItem {
  const UixNavigationItem({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

class UixBottomNavigation extends StatelessWidget {
  const UixBottomNavigation({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  final List<UixNavigationItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items
          .map(
            (item) => BottomNavigationBarItem(
              icon: Icon(item.icon),
              label: item.label,
            ),
          )
          .toList(),
    );
  }
}
