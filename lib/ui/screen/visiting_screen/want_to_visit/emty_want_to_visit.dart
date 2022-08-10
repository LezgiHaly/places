import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/ui/res/styles.dart';

class EmtyWantToVisit extends StatelessWidget {
  const EmtyWantToVisit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.icCard),
          const SizedBox(
            height: 32,
          ),
          Text(
            AppStrings.textEmty,
            style: AppTypography.textText18Medium.copyWith(
              color: AppColors.textGrayColor.withOpacity(0.56),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppStrings.markPlace,
            style: AppTypography.textText14Regular.copyWith(
              color: AppColors.textGrayColor.withOpacity(0.56),
            ),
          ),
        ],
      ),
    );
  }
}
