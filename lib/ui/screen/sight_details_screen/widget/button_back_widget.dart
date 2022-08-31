import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';

// виджет кнопки возврата на предыдущую страницу

class ButtonBackWidget extends StatelessWidget {
  final Sight sight;
  const ButtonBackWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        elevation: 0,
        primary: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: SvgPicture.asset(
        AppAssets.buttonBack,
      ),
    );
  }
}
