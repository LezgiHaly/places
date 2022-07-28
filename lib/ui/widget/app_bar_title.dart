import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

class AppBartitle extends StatelessWidget {
  const AppBartitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        AppStrings.appBar,
        style: AppTypography.textText32Bold.copyWith(
          color: AppColors.appColor,
        ),
      ),
    );
  }
}
