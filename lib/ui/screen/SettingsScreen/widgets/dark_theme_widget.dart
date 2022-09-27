import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/SettingsScreen/widgets/switch_theme.dart';

class DarkThemeWidget extends StatelessWidget {
  const DarkThemeWidget({Key? key}) : super(key: key);

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
                  AppStrings.darkTheme,
                  style: AppTypography.textText16Regular.copyWith(
                    color: Theme.of(context).textTheme.bodyText2?.color,
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SwitchThemeWidget(),
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
