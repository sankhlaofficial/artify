part of 'package:artify/views/shared/imports.dart';

class VerticalSpacer extends StatelessWidget {
  final double heightFactor;

  const VerticalSpacer({
    this.heightFactor = 2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8 * heightFactor,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  final double widthFactor;

  const HorizontalSpacer({
    this.widthFactor = 2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8 * widthFactor,
    );
  }
}
