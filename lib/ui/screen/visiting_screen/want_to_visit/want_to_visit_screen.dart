import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_card_screen/widget/image_card_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/name_card_button_widget.dart';
import 'package:places/ui/screen/sight_card_screen/widget/type_car_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/work_time_widget.dart';

class WantToVisitScreen extends StatelessWidget {
  final Sight sight;
  const WantToVisitScreen({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            Expanded(
                              flex: 2,
                              child: TypeCardWidget(
                                sight: sight,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppAssets.calendar,
                                color: AppColors.textWhiteColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppAssets.icDelite,
                              ),
                            ),
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
                    const _PlanningDate(),
                    const SizedBox(
                      height: 10,
                    ),
                    WorkTimeWidget(sight: sight),
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

class _PlanningDate extends StatelessWidget {
  const _PlanningDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.planningDate,
      style: AppTypography.textText14Regular.copyWith(
        color: AppColors.buttonColor,
      ),
    );
  }
}
