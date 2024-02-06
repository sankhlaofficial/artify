import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ArtifyHomePage extends StatelessWidget {
  const ArtifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).isMobile
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: const [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Text("Artify"),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Text("Search bar"),
            ),
          ],
        ),
      ],
    ));
  }
}
