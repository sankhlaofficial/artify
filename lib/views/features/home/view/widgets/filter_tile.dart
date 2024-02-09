part of 'package:artify/views/shared/imports.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({super.key, required this.filterItem});

  final String filterItem;

  @override
  Widget build(BuildContext context) {
    print('applied filter list is ' +
        context.read<FetchArtworkBloc>().state.appliedFilterList.toString());

    bool isSelected = context
        .read<FetchArtworkBloc>()
        .state
        .appliedFilterList
        .contains(filterItem);

    print('isSelected is $isSelected');

    return InkWell(
      onTap: () {
        context
            .read<FetchArtworkBloc>()
            .add(ApplyFilters(filtersApplied: {filterItem}));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppMeasurements.horizontalMarginMedium),
        padding: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.containerSelectedBackgroundColor
              : AppColor.containerBackgroundColor,
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
          border: Border.all(color: AppColor.primaryBorderColor),
        ),
        child: Center(
            child: Text(
          filterItem,
          style: TextStyle(
              color: isSelected
                  ? AppColor.selectedTextColor
                  : AppColor.primaryTextColor),
        )),
      ),
    );
  }
}
