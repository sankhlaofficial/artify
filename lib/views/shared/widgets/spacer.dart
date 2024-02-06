part of '../../views.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;

  const VerticalSpacer({
    this.height = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  final double width;

  const HorizontalSpacer({
    this.width = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
    );
  }
}
