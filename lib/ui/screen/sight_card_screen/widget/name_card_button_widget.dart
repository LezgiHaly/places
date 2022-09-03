import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_details_screen/sight_details_screen.dart';

// Копка с именем интересного места

class NameCardButtonWidget extends StatelessWidget {
  final Sight sight;
  const NameCardButtonWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => SightDetails(
              sight: sight,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).cardColor,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        elevation: 0,
      ),
      child: Text(
        sight.name,
        style: AppTypography.textText16Regular
            .copyWith(color: Theme.of(context).textTheme.bodyText2?.color),
      ),
    );
  }
}
