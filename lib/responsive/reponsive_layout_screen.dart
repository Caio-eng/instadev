import 'package:flutter/material.dart';
import 'package:instadev/utils/dimensions.dart';

class ResponiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponiveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > WebScreenSize) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
