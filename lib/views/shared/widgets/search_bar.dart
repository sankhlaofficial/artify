part of 'package:artify/views/shared/imports.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppMeasurements.searchBarHeight,
      child: TextField(
        onChanged: (String? text) {},
        decoration: const InputDecoration(
          filled: true,
          hintText: "Search for Items",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
