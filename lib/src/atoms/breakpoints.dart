import 'package:flutter/material.dart';

/// Use for media querys breakpoints
class OriginBreakpoint {
  /// true when screen width is bigger than 544
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 544;
}
