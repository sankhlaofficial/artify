part of 'package:artify/views/shared/imports.dart';

class ArtworkTile extends StatelessWidget {
  const ArtworkTile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);

    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ArtworkDescriptionPage())),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: ResponsiveRowColumn(
          rowMainAxisSize: MainAxisSize.min,
          layout: responsiveView.isMobile
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: Stack(
                children: [
                  const CachedImageProvider(
                    width: 200,
                    height: 200,
                    networkImageUrl:
                        'https://th.bing.com/th/id/OIP.5W9ozBJ-JwLYF1HWu4EQjwHaGI?rs=1&pid=ImgDetMain',
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
                        "Paining",
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
                    "The starry night",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const VerticalSpacer(
                    heightFactor: 1,
                  ),
                  Text(
                    "Vincy Van Gogh ",
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
