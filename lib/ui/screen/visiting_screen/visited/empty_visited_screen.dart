import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';

class EmptyVisitedScreen extends StatelessWidget {
  const EmptyVisitedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.route,
            color: AppColors.textGrayColor,
            width: 64,
            height: 64,
          ),
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
            AppStrings.complateTheRout,
            style: AppTypography.textText14Regular.copyWith(
              color: AppColors.textGrayColor.withOpacity(0.56),
            ),
          ),
        ],
      ),
    );
  }
}
