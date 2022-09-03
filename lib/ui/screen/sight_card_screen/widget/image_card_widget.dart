import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

//Виджет картинки

class ImageCardWidget extends StatelessWidget {
  final Sight sight;
  const ImageCardWidget({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 94,
      child: Image.network(
        sight.url,
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null
              ? child
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
