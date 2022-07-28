import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';

// кнопка добавления в изюранное

class ToFavoritesButtonWidget extends StatelessWidget {
  const ToFavoritesButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.textWhiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.darkFavorite,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                AppStrings.toFavorites,
                style: AppTypography.textText14Regular
                    .copyWith(color: AppColors.appColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
