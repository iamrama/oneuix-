import 'package:flutter/widgets.dart';

enum UixBreakpoint { mobile, tablet, desktop }

class UixResponsive {
  static UixBreakpoint of(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= 1024) return UixBreakpoint.desktop;
    if (width >= 600) return UixBreakpoint.tablet;
    return UixBreakpoint.mobile;
  }

  static int adaptiveGridCount(BuildContext context) {
    return switch (of(context)) {
      UixBreakpoint.mobile => 1,
      UixBreakpoint.tablet => 2,
      UixBreakpoint.desktop => 3,
    };
  }
}
