part of 'package:artify/views/shared/imports.dart';

class ScreenPopArrow extends StatelessWidget {
  const ScreenPopArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        padding: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        decoration: BoxDecoration(
          color: AppColor.iconBackgroundColor,
          border: Border.all(),
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
        ),
        child: const Icon(
          Icons.arrow_back_rounded,
          color: AppColor.primaryIconColor,
        ),
      ),
    );
  }
}
