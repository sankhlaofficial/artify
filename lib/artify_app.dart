import 'package:artify/theme/index.dart';
import 'package:flutter/material.dart';

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
      title: 'Artify',
      theme: AppTheme.getAppTheme(),
      home: const Scaffold(
        body: Center(
          child: Text("Main app"),
        ),
      ),
    );
  }
}
