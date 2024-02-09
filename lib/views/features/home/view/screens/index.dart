part of 'package:artify/views/shared/imports.dart';

class ArtifyHomePage extends StatelessWidget {
  const ArtifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: BlocBuilder<FetchArtworkBloc, FetchArtworkState>(
        builder: (context, state) {
          if (state is HomePageSuccess) {
            return FetchedArtworkList(
              allArtworks: state.artList,
              filterList: state.filterList,
            );
          } else if (state is HomePageLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomePageError) {
            return Center(
              child: Text("Error is ${state.appException}"),
            );
          } else {
            return const Center(child: Text("No state present"));
          }
        },
      ),
    ));
  }
}
