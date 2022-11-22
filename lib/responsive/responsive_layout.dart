import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contexts, constraints) {
        if (constraints.maxWidth > 900) {
          //to use web screen if screen bigger than 900
          return webScreenLayout;
        }
        //to use mobile screen if screen is bigger than 900
        return mobileScreenLayout;
      },
    );
  }
}
