part of 'package:artify/views/shared/imports.dart';

class ArtDownloadButton extends StatelessWidget {
  const ArtDownloadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        padding: const EdgeInsets.all(AppMeasurements.allSideContainerPadding),
        decoration: BoxDecoration(
          color: AppColor.iconBackgroundColor.withOpacity(0.65),
          border: Border.all(),
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
        ),
        child: const Icon(
          Icons.save_alt,
          color: AppColor.primaryIconColor,
        ),
      ),
    );
  }
}
