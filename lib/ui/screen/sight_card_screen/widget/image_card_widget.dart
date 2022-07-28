import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

//Виджет картинки
class ImageCardWidget extends StatelessWidget {
  final Sight sight;
  const ImageCardWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      height: 94,
      child: Image.network(
        sight.url,
        fit: BoxFit.cover,
      ),
    );
  }
}