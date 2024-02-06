part of 'package:artify/views/shared/imports.dart';

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
