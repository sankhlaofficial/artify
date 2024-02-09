part of 'package:artify/views/shared/imports.dart';

class ArtworkDescriptionPage extends StatelessWidget {
  const ArtworkDescriptionPage({super.key, required this.artwork});
  final Artwork artwork;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0, 0.5],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(artwork.artworkImage
                .imageDisplayUrl), // a network image or a local image here,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          leading: const ScreenPopArrow(),
          actions: const [ArtDownloadButton()],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(AppMeasurements.allSideScreenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.7,
              ),
              Row(
                children: [
                  Text(
                    artwork.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColor.secondaryTextColor),
                  ),
                  const HorizontalSpacer(
                    widthFactor: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        AppMeasurements.allSideContainerPadding),
                    decoration: BoxDecoration(
                        color: AppColor.boxFillColor,
                        borderRadius:
                            BorderRadius.circular(AppMeasurements.borderRadius),
                        border: Border.all()),
                    child: Text(
                      artwork.category,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: AppColor.primaryTextColor),
                    ),
                  )
                ],
              ),
              Text(
                "   -${artwork.author}",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColor.secondaryTextColor),
              ),
              const VerticalSpacer(
                heightFactor: 2,
              ),
              Text(
                artwork.description,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColor.secondaryTextColor),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
