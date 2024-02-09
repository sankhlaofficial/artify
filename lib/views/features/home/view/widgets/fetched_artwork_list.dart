part of 'package:artify/views/shared/imports.dart';

class FetchedArtworkList extends StatelessWidget {
  const FetchedArtworkList(
      {super.key, required this.allArtworks, this.filterList = const []});

  final List<Artwork> allArtworks;
  final List<String> filterList;

  @override
  Widget build(BuildContext context) {
    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);
    return Column(
      children: [
        HomeAppBar(),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 1 : 2,
        ),
        SizedBox(
          height: AppMeasurements.searchBarHeight,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: filterList.length,
              itemBuilder: (context, index) {
                return FilterTile(
                  filterItem: filterList[index],
                );
              }),
        ),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 3 : 4,
        ),
        ResponsiveGridView(
            gridChildren: allArtworks
                .map((artwork) => ArtworkTile(artwork: artwork))
                .toList()),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 1 : 2,
        ),
      ],
    );
  }
}
