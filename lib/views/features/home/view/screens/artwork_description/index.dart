part of 'package:artify/views/shared/imports.dart';

class ArtworkDescriptionPage extends StatelessWidget {
  const ArtworkDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: CachedNetworkImageProvider(
            'https://th.bing.com/th/id/OIP.5W9ozBJ-JwLYF1HWu4EQjwHaGI?rs=1&pid=ImgDetMain'), // a network image or a local image here,
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
                    "The starry Night",
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
                      "Painting",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: AppColor.primaryTextColor),
                    ),
                  )
                ],
              ),
              const VerticalSpacer(
                heightFactor: 1,
              ),
              Text(
                "   -Vincent Van Gogh",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColor.secondaryTextColor),
              ),
              const VerticalSpacer(
                heightFactor: 2,
              ),
              Text(
                "The starry night is an oil canvas painting by Dutch post colonial master Sir lorf irwin, . IT ADAMNSDMBAS fdsdfnasdsadnasdsandjkasdsadjkas ksjdsadjkasdsjadjsaj jkasdajksdjkasdasjk dasjd kjdaskjdsajdasjdas jkdasjdjasdjasd asjkd jassjakdbasjk djasbjdasdsajdsajdjad djkawndan adn nasdasd adnaskldnasknkasna ndkalsdnksandskna klnasd kndkasdk sl a nksalndk lsand klsa nk kandkl askdaskd ks kdnaks dkas dkas sad ndaks nkasnkasnkas lk nkdalsk dnask ns lkdjaanadnans dnsa dlkasn slandak nsdkaks ksdnak snakdnaksnd kasn ksn kdkas nkasn ksan dknksan dksa kldnkas ndklakasn klas nlkan alk kasdnkan kankaslnkas nkan aks klas kasn kas nk nkan kaln aklsn ksl nksad sakln klsadnskan dask lndkasn dkasn dklan kan kdaksn daskl ndkan sdkna skndkas ndkans kasnd askl ndksasn ksadnaksln kdlsan kldasn asklnd klsand klasndk alsn klasn dlka ndkaskldnksaln ksalnd skladn klsand kasnd klas ",
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
