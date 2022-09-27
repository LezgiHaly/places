import 'package:flutter/material.dart';
import 'package:places/domain/filter.dart';
import 'package:places/ui/res/styles.dart';

class TextWidget extends StatelessWidget {
  final Filter filter;
  const TextWidget({Key? key, required this.filter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      filter.name,
      style: AppTypography.textText12Regular.copyWith(
        color: Theme.of(context).textTheme.bodyText2?.color,
      ),
    );
  }
}
