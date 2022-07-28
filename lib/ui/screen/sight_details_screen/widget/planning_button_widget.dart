import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

// виджет кнопки  планирования

class PlanningButton extends StatelessWidget {
  const PlanningButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.textWhiteColor,
      ),
      onPressed: () {},
      child: Row(
        children: [
          const Icon(
            Icons.calendar_month,
            size: 24,
            color: AppColors.textGrayColor,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              AppStrings.toPlan,
              style: AppTypography.textText14Regular.copyWith(
                color: AppColors.textGrayColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
