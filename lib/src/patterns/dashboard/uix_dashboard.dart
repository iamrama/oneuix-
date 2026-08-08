import 'package:flutter/material.dart';

import '../../utils/uix_responsive.dart';

class UixDashboardTile {
  const UixDashboardTile({required this.title, required this.value, this.delta});

  final String title;
  final String value;
  final String? delta;
}

class UixDashboard extends StatelessWidget {
  const UixDashboard({
    super.key,
    required this.tiles,
  });

  final List<UixDashboardTile> tiles;

  @override
  Widget build(BuildContext context) {
    final columns = UixResponsive.adaptiveGridCount(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.6,
      ),
      itemCount: tiles.length,
      itemBuilder: (_, index) {
        final tile = tiles[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tile.title),
                const Spacer(),
                Text(tile.value, style: Theme.of(context).textTheme.titleLarge),
                if (tile.delta != null) Text(tile.delta!),
              ],
            ),
          ),
        );
      },
    );
  }
}
