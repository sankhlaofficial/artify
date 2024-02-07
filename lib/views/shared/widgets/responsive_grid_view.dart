part of 'package:artify/views/shared/imports.dart';

class ResponsiveGridView extends StatelessWidget {
  final List<Widget> gridChildren;
  const ResponsiveGridView({super.key, required this.gridChildren});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15, // gap between adjacent chips
      runSpacing: 15, // gap between lines
      children: gridChildren,
    );
  }
}
