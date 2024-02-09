part of 'package:artify/views/shared/imports.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({super.key, required this.filterItem});

  final String filterItem;

  @override
  Widget build(BuildContext context) {
    bool isSelected = context
        .read<FetchArtworkBloc>()
        .state
        .appliedFilterList
        .contains(filterItem);

    return InkWell(
      onTap: () {
        if (isSelected) {
          print('selected');
          Set<String> newFilterList =
              context.read<FetchArtworkBloc>().state.appliedFilterList;

          newFilterList.remove(filterItem);

          context
              .read<FetchArtworkBloc>()
              .add(ApplyFilters(filtersApplied: newFilterList));
        } else {
          print('not selected');
          context.read<FetchArtworkBloc>().add(ApplyFilters(filtersApplied: {
                filterItem,
                ...context.read<FetchArtworkBloc>().state.appliedFilterList
              }));
        }
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
