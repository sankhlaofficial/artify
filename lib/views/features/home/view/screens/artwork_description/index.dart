part of 'package:artify/views/shared/imports.dart';

class ArtworkDescriptionPage extends StatelessWidget {
  const ArtworkDescriptionPage({super.key, required this.artwork});
  final Artwork artwork;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: const ScreenPopArrow(),
        actions: const [ArtDownloadButton()],
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0, 0.8],
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(artwork.artworkImage
                  .imageDisplayUrl), // a network image or a local image here,
            )),
          ),
          SingleChildScrollView(
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
                          borderRadius: BorderRadius.circular(
                              AppMeasurements.borderRadius),
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
                  "   - ${artwork.author}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColor.secondaryTextColor),
                ),
                const VerticalSpacer(
                  heightFactor: 2,
                ),
                Text(
                  "Maecenas dapibus dolor odio, nec semper felis ultrices at. Nulla laoreet urna ex, in tempor nunc accumsan molestie. Aliquam efficitur ornare hendrerit. Nullam sem metus, porta sed ultricies non, condimentum vel magna. Suspendisse pellentesque id purus et aliquet. Suspendisse dapibus blandit urna, id pharetra dui. Etiam feugiat at magna a hendrerit. Mauris vitae tellus ut odio ultricies iaculis sed id ante.Aliquam ac eros semper, pellentesque massa vel, cursus dui. Maecenas ultricies non tortor sit amet maximus. Proin ultrices risus quis orci fermentum, et porta enim accumsan. In vulputate eleifend metus, quis viverra nibh molestie at. Sed bibendum felis purus, ut laoreet nibh egestas ac. In a urna nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer semper accumsan tellus at commodo. Pellentesque consectetur lectus eget turpis venenatis, at bibendum urna commodo. Praesent non sapien eu libero tristique tempus eu consequat quam. Vivamus vulputate, ante ac pretium ultrices, nisi nibh tempus risus, vel pulvinar massa nunc eget odio. Fusce facilisis sollicitudin ligula, nec hendrerit dolor facilisis at. In imperdiet quam nunc, sed aliquet nisi finibus vel.Quisque sed metus justo. Vivamus fringilla interdum odio, vitae pellentesque justo molestie eu. Maecenas pellentesque sed mauris at cursus. Duis ultrices purus eu mauris blandit ornare. Pellentesque a ante nec tortor auctor aliquam. Vestibulum nec felis luctus nisl mollis cursus non ac est. Nulla sed nisl dictum elit rutrum cursus at a massa. Ut in est non tortor tincidunt viverra. Donec scelerisque nisi metus, eget lacinia sapien tempor eu. Nulla condimentum, metus sit amet ullamcorper tincidunt, massa mi ullamcorper nibh, sit amet fermentum ipsum purus et velit. Proin aliquam luctus vestibulum. Curabitur a fringilla lorem, a pretium felis. Quisque et tincidunt arcu. Cras vel nunc sollicitudin, consequat mauris et, luctus ligula. Duis cursus leo nec rutrum mollis.Aliquam eget pharetra nibh. Duis tempor justo fringilla eros vehicula, nec imperdiet neque volutpat. In at felis sed nisi dapibus ornare ut at lorem. Nulla vitae orci sodales, convallis risus at, dignissim arcu. Nulla lobortis pretium quam a tristique. Cras vitae viverra ligula. Sed consectetur ex at odio accumsan, sed porta velit eleifend. Proin rhoncus dolor massa, a imperdiet risus elementum eget. Sed lorem ex, porta ac hendrerit pharetra, ultrices vitae lorem. Morbi tellus ex, pharetra sed erat at, blandit posuere nisi. Donec sed leo in diam accumsan varius. Donec eu facilisis eros. In vel massa tempus, gravida dolor sed, tincidunt nisi. Proin porta elit sit amet blandit lobortis.",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColor.secondaryTextColor),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
