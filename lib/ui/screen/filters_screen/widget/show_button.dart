import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';
// кнопка применения фильтров

class ShowButton extends StatelessWidget {
  final VoidCallback onTap;
  final String placesCount;
  const ShowButton({Key? key, required this.onTap, required this.placesCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 105,
          bottom: 15,
        ),
        child: Row(
          children: [
            Text(
              '${AppStrings.show} ($placesCount)',
              style: AppTypography.textText14Bold.copyWith(
                color: AppColors.textWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
