import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/filters_screen/filters_screen.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 0.1,
      onPressed: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => const FiltersScreen(),
          ),
        );
      },
      icon: SvgPicture.asset(
        AppAssets.icButtonFilter,
        height: 24,
        width: 24,
      ),
    );
  }
}
