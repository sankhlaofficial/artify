import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ArtifyHomePage extends StatelessWidget {
  const ArtifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);

    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveView.isMobile ? size.width * 0.05 : 0,
              vertical: 24),
          child: ResponsiveRowColumn(
            layout: responsiveView.isMobile
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Text("Artify"),
              ),
              if (responsiveView.isMobile)
                const ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: SizedBox(
                    height: 16,
                  ),
                ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    onChanged: (String? text) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xfff1f1f1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      hintText: "Search for Items",
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
