import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// виджет времени работы
class WorkTimeWidget extends StatelessWidget {
  final Sight sight;
  const WorkTimeWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.workTime,
      style: AppTypography.textText14Regular.copyWith(
        color: AppColors.textGrayColor,
      ),
    );
  }
}
