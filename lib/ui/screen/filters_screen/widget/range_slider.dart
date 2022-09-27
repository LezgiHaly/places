import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

// Слайдер показа расстояния
class RangeSlideWidget extends StatefulWidget {
  final void Function(int radius) onChanged;

  const RangeSlideWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<RangeSlideWidget> createState() => _RangeSlideWidgetState();
}

class _RangeSlideWidgetState extends State<RangeSlideWidget> {
  RangeValues currentRangeValues = const RangeValues(0, 500);

  @override
  Widget build(BuildContext context) {
    final start = currentRangeValues.start.round().toString();
    final end = currentRangeValues.end.round().toString();

    // ignore: newline-before-return
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.distance,
              style: AppTypography.textText16Regular
                  .copyWith(color: AppColors.blackDark1),
            ),
            const SizedBox(
              width: 100,
            ),
            Text('от $start до $end км'),
          ],
        ),
        RangeSlider(
          values: currentRangeValues,
          max: 1000,
          onChanged: (values) {
            setState(() {
              currentRangeValues = values;
            });
            final start = currentRangeValues.start.round();
            final end = currentRangeValues.end.round();
            widget.onChanged.call(end - start);
          },
        ),
      ],
    );
  }
}
