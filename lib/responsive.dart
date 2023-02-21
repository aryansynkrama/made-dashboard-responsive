import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  // final Widget mobileS;
  // final Widget mobileM;
  final Widget mobileL;
  final Widget? tablet;
  final Widget laptop;
  final Widget desktop;

  const Responsive({
    Key? key,
    // required this.mobileS,
    // required this.mobileM,
    required this.mobileL,
    this.tablet,
    required this.laptop,
    required this.desktop,
  }) : super(key: key);

  static bool isMobileS(BuildContext context) =>
      MediaQuery.of(context).size.width < 360;

  static bool isMobileM(BuildContext context) =>
      MediaQuery.of(context).size.width >= 360 &&
          MediaQuery.of(context).size.width < 480;

  static bool isMobileL(BuildContext context) =>
      MediaQuery.of(context).size.width >= 480 &&
          MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
          MediaQuery.of(context).size.width < 992;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 992 &&
          MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1200) {
      return desktop;
    } else if (_size.width >= 992) {
      return laptop;
    } else if (_size.width >= 600) {
      return tablet!;
    } else {
      return mobileL;
    }
  }
}
