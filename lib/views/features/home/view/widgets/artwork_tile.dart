part of 'package:artify/views/shared/imports.dart';

class ArtworkTile extends StatelessWidget {
  const ArtworkTile({super.key, required this.artwork});
  final Artwork artwork;

  @override
  Widget build(BuildContext context) {
    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);

    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ArtworkDescriptionPage(
                artwork: artwork,
              ))),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(AppMeasurements.borderRadius)),
        child: ResponsiveRowColumn(
          rowMainAxisSize: MainAxisSize.min,
          layout: responsiveView.isMobile
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: Stack(
                children: [
                  CachedImageProvider(
                    width: 200,
                    height: 200,
                    networkImageUrl: artwork.artworkImage.imageDisplayUrl,
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.all(
                          AppMeasurements.allSideContainerPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              AppMeasurements.borderRadius),
                          border:
                              Border.all(color: AppColor.secondaryBorderColor)),
                      child: Text(
                        artwork.category,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            responsiveView.isMobile
                ? const ResponsiveRowColumnItem(child: VerticalSpacer())
                : const ResponsiveRowColumnItem(child: HorizontalSpacer()),
            ResponsiveRowColumnItem(
                child: Padding(
              padding:
                  const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
              child: Column(
                children: [
                  Text(
                    artwork.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const VerticalSpacer(
                    heightFactor: 1,
                  ),
                  Text(
                    artwork.author,
                    style: Theme.of(context).textTheme.displayMedium,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
