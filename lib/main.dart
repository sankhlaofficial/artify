import 'package:artify/models/artwork_repository.dart';
import 'package:artify/viewmodels/blocs/fetch_artwork/fetch_artwork_bloc.dart';
import 'package:artify/views/shared/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ArtworkRepository(),
      child: BlocProvider(
          create: (context) =>
              FetchArtworkBloc(context.read<ArtworkRepository>())
                ..add(CallArtworkAPI()),
          child: const ArtifyApp()),
    );
  }
}
