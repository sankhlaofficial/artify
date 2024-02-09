part of 'package:artify/views/shared/imports.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({super.key, required this.filterItem});

  final String filterItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppMeasurements.horizontalMarginMedium),
      padding: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
        border: Border.all(color: AppColor.primaryBorderColor),
      ),
      child: Center(child: Text(filterItem)),
    );
  }
}
