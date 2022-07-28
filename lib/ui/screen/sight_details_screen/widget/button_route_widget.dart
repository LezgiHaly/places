import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';

// виджет кнопки постойки маршрута

class ButtonRouteWidget extends StatelessWidget {
  const ButtonRouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 67,
          bottom: 15,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.route,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                AppStrings.buttonText,
                style: AppTypography.textText14Bold.copyWith(
                  color: AppColors.textWhiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
