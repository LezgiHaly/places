import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/ui/res/styles.dart';

// кнопка добавления в избранное

class FavoriteButtonCardWidget extends StatelessWidget {
  const FavoriteButtonCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        AppAssets.favorite,
        width: 20,
        height: 18,
      ),
    );
  }
}
