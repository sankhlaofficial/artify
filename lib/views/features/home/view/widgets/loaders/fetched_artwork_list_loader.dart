import 'package:artify/views/features/home/view/widgets/loaders/artwork_tile_loader.dart';
import 'package:artify/views/features/home/view/widgets/loaders/filter_tile_loader.dart';
import 'package:artify/views/shared/imports.dart';
import 'package:artify/views/theme/measurements.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart' as responsive;

class FetchedArtworkListLoader extends StatelessWidget {
  const FetchedArtworkListLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    responsive.ResponsiveBreakpointsData responsiveView =
        responsive.ResponsiveBreakpoints.of(context);
    return Column(
      children: [
        SizedBox(
          height: AppMeasurements.searchBarHeight,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const FilterTileLoader();
              }),
        ),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 3 : 4,
        ),
        const ResponsiveGridView(
          gridChildren: [
            ArtworkTileLoader(),
            ArtworkTileLoader(),
            ArtworkTileLoader(),
            ArtworkTileLoader(),
            ArtworkTileLoader(),
            ArtworkTileLoader(),
            ArtworkTileLoader(),
          ],
        ),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 1 : 2,
        ),
      ],
    );
  }
}
