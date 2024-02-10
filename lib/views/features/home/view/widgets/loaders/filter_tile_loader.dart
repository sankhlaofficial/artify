import 'package:artify/views/shared/imports.dart';
import 'package:artify/views/theme/measurements.dart';
import 'package:flutter/material.dart';

class FilterTileLoader extends StatelessWidget {
  const FilterTileLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.symmetric(
            horizontal: AppMeasurements.horizontalMarginMedium),
        padding: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        decoration: BoxDecoration(
          color: AppColor.shimmerColor,
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
          border:
              Border.all(color: AppColor.primaryBorderColor.withOpacity(0.3)),
        ),
      ),
    );
  }
}
