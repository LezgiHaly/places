import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_list_screen/widget/filter_button.dart';
import 'package:places/ui/screen/sight_list_screen/widget/search_button.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Theme.of(context).cardColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: const FilterButton(),
        label: Text(
          AppStrings.search,
          style: AppTypography.textText16Regular.copyWith(
            color:
                Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.56),
          ),
        ),
        prefixIcon: const SearchButton(),
      ),
    );
  }
}
