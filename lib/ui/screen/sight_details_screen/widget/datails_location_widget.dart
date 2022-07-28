import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// виджет детального описания локации

class DatailLocationWidget extends StatelessWidget {
  final Sight sight;
  const DatailLocationWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.details,
      style: AppTypography.textText14Regular.copyWith(
        color: AppColors.appColor,
      ),
    );
  }
}
