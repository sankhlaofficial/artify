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
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: AppColor.primaryTextColor),
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
