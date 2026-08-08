import 'package:flutter/material.dart';

class UixAvatar extends StatelessWidget {
  const UixAvatar({
    super.key,
    required this.initials,
    this.image,
    this.size = 40,
  });

  final String initials;
  final ImageProvider? image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: image,
      child: image == null ? Text(initials) : null,
    );
  }
}
