part of 'package:artify/views/shared/imports.dart';

class CachedImageProvider extends StatelessWidget {
  final double? width;
  final double? height;

  final String networkImageUrl;

  const CachedImageProvider(
      {super.key, required this.networkImageUrl, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppMeasurements.borderRadius),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      imageUrl: networkImageUrl,
      placeholder: (BuildContext context, String url) => Container(
        height: height,
        width: width,
        color: Colors.grey,
      ),
      errorWidget: (BuildContext context, String url, dynamic error) =>
          const Icon(Icons.error),
    );
  }
}
