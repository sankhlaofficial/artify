import 'package:artify/views/constants/strings.dart';
import 'package:artify/views/features/home/view/index.dart';
import 'package:artify/views/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ArtifyApp extends StatefulWidget {
  const ArtifyApp({super.key});

  @override
  State<ArtifyApp> createState() => _ArtifyAppState();
}

class _ArtifyAppState extends State<ArtifyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        theme: AppTheme.getAppTheme(),
        home: const ArtifyHomePage(),
        builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ));
  }
}
