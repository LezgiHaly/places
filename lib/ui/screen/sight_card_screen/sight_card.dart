import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_card_screen/widget/annotation_card_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/favorite_button_card_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/image_card_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/name_card_button_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/type_car_widget.dart';

/// Карточка инетерсного места
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      // ignore: use_decorated_box
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBackColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: ImageCardWidget(
                          sight: sight,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TypeCardWidget(
                              sight: sight,
                            ),
                            const FavoriteButtonCardWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameCardButtonWidget(
                      sight: sight,
                    ),
                    AnnotationCardWidget(
                      sight: sight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
