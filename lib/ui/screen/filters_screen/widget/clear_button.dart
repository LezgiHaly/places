import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

// Кнопка очистки

class ClearButton extends StatelessWidget {
  final VoidCallback onTap;
  const ClearButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        'Очистить',
        style: AppTypography.textText16Regular
            .copyWith(color: AppColors.buttonColor),
      ),
    );
  }
}
