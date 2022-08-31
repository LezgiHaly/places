import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// Тип интересного места

class TypeCardWidget extends StatelessWidget {
  final Sight sight;
  const TypeCardWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.type,
      style: AppTypography.textText14Bold.copyWith(
        color: AppColors.textWhiteColor,
      ),
    );
  }
}
