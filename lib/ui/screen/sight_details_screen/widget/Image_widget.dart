// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

// виджет картинки

class ImageWidget extends StatelessWidget {
  final Sight sight;

  const ImageWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      sight.url,
      width: double.infinity,
      height: 360,
      fit: BoxFit.fill,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
