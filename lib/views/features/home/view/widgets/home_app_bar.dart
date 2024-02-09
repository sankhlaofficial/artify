part of 'package:artify/views/shared/imports.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: responsiveView.isMobile ? size.width * 0.05 : 0,
          vertical: AppMeasurements.verticalPaddingLarge),
      child: ResponsiveRowColumn(
        layout: responsiveView.isMobile
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Text(
              Strings.appTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
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
    );
  }
}
