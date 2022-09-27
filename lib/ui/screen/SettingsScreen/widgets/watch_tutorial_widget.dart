import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';

class WatchTutorialWidget extends StatelessWidget {
  const WatchTutorialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.textGrayColor.withOpacity(0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 11,
                child: Text(
                  AppStrings.watchTutorial,
                  style: AppTypography.textText16Regular.copyWith(
                    color: Theme.of(context).textTheme.bodyText2?.color,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SvgPicture.asset(AppAssets.icInfo),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
