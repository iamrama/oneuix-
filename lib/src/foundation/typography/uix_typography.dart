import 'package:flutter/material.dart';

@immutable
class UixTypography {
  const UixTypography({
    required this.display,
    required this.heading,
    required this.title,
    required this.body,
    required this.label,
    required this.caption,
    required this.button,
  });

  final TextStyle display;
  final TextStyle heading;
  final TextStyle title;
  final TextStyle body;
  final TextStyle label;
  final TextStyle caption;
  final TextStyle button;

  factory UixTypography.fallback({String fontFamily = 'Roboto'}) {
    return UixTypography(
      display: TextStyle(fontFamily: fontFamily, fontSize: 34, fontWeight: FontWeight.w700, height: 1.2),
      heading: TextStyle(fontFamily: fontFamily, fontSize: 28, fontWeight: FontWeight.w700, height: 1.2),
      title: TextStyle(fontFamily: fontFamily, fontSize: 20, fontWeight: FontWeight.w600, height: 1.3),
      body: TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w400, height: 1.4),
      label: TextStyle(fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w500, height: 1.3),
      caption: TextStyle(fontFamily: fontFamily, fontSize: 12, fontWeight: FontWeight.w400, height: 1.3),
      button: TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w600, height: 1.2),
    );
  }

  UixTypography copyWith({
    TextStyle? display,
    TextStyle? heading,
    TextStyle? title,
    TextStyle? body,
    TextStyle? label,
    TextStyle? caption,
    TextStyle? button,
  }) {
    return UixTypography(
      display: display ?? this.display,
      heading: heading ?? this.heading,
      title: title ?? this.title,
      body: body ?? this.body,
      label: label ?? this.label,
      caption: caption ?? this.caption,
      button: button ?? this.button,
    );
  }
}
