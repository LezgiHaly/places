import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/filter.dart';

//Виджет картинки

class ImageCard extends StatelessWidget {
  final Filter fielter;
  const ImageCard({Key? key, required this.fielter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 32,
      child: SvgPicture.asset(fielter.icon),
    );
  }
}
