import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// Виджет с анатацией интересного места

class AnnotationCardWidget extends StatelessWidget {
  final Sight sight;
  const AnnotationCardWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.annotation,
      style: AppTypography.textText14Regular.copyWith(
        color: AppColors.textGrayColor,
      ),
    );
  }
}
