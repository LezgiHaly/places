import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// виджет названия локации

class NameLocationWidget extends StatelessWidget {
  final Sight sight;
  const NameLocationWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.name,
      style: AppTypography.textText24Bold.copyWith(
        color: AppColors.appColor,
      ),
    );
  }
}
