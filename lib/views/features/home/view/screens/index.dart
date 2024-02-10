part of 'package:artify/views/shared/imports.dart';

class ArtifyHomePage extends StatelessWidget {
  const ArtifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);
    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        log("refreshed");
        context.read<FetchArtworkBloc>().add(CallArtworkAPI());
      },
      child: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            const HomeAppBar(),
            VerticalSpacer(
              heightFactor: responsiveView.isMobile ? 1 : 2,
            ),
            BlocBuilder<FetchArtworkBloc, FetchArtworkState>(
              builder: (context, state) {
                if (state is HomePageSuccess) {
                  return FetchedArtworkList(
                    allArtworks: state.displayedArtList,
                    filterList: state.filterList,
                  );
                } else if (state is HomePageLoading) {
                  return const Center(
                    child: FetchedArtworkListLoader(),
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
          ],
        )),
      ),
    ));
  }
}
