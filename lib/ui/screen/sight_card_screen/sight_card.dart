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
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBackColor,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 328,
        // height: 200,
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ),
                        child: TypeCardWidget(
                          sight: sight,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 19, right: 16),
                        child: FavoriteButtonCardWidget(),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: NameCardButtonWidget(
                  sight: sight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  bottom: 12,
                  right: 4,
                ),
                child: AnnotationCardWidget(
                  sight: sight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
