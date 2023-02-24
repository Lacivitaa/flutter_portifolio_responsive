import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1250 &&
      MediaQuery.of(context).size.width >= 650;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isMobile(context)) {
          return mobile;
        }
        if (isTablet(context)) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
