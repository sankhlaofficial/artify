import 'package:artify/views/shared/imports.dart';
import 'package:artify/views/theme/measurements.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ArtworkTileLoader extends StatelessWidget {
  const ArtworkTileLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ResponsiveBreakpointsData responsiveView =
        ResponsiveBreakpoints.of(context);

    return InkWell(
      onTap: () {},
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
              child: Container(
                height: 200,
                width: 200,
                color: AppColor.shimmerColor,
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
                  Container(
                    height: 12,
                    width: 12,
                    color: AppColor.shimmerColor,
                  ),
                  const VerticalSpacer(
                    heightFactor: 1,
                  ),
                  Container(
                    height: 12,
                    width: 12,
                    color: AppColor.shimmerColor,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
