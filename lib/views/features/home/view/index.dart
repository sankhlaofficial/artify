part of 'package:artify/views/shared/imports.dart';

class ArtifyHomePage extends StatelessWidget {
  const ArtifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);

    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveView.isMobile ? size.width * 0.05 : 0,
              vertical: AppMeasurements.verticalPaddingLarge),
          child: ResponsiveRowColumn(
            layout: responsiveView.isMobile
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Text(Strings.appTitle),
              ),
              if (responsiveView.isMobile)
                const ResponsiveRowColumnItem(
                  child: VerticalSpacer(),
                ),
              const ResponsiveRowColumnItem(
                rowFlex: 2,
                child: SearchBar(),
              ),
            ],
          ),
        ),
        VerticalSpacer(
          heightFactor: responsiveView.isMobile ? 1 : 2,
        ),
        SizedBox(
          height: AppMeasurements.searchBarHeight,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const FilterTile();
              }),
        )
      ],
    ));
  }
}