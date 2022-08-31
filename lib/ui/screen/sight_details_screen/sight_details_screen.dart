import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/res/themes.dart';
import 'package:places/ui/screen/sight_details_screen/widget/Image_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/button_back_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/button_route_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/datails_location_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/name_location_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/planning_button_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/to_favorites_button_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/type_location_widget.dart';
import 'package:places/ui/screen/sight_details_screen/widget/work_time_widget.dart';

// Детализированный экран локации

class SightDetails extends StatelessWidget {
  final Sight sight;
  const SightDetails({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ImageWidget(sight: sight),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 56,
                  ),
                  child: ButtonBackWidget(sight: sight),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  NameLocationWidget(sight: sight),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      TypeLocationWidget(sight: sight),
                      const SizedBox(
                        width: 14,
                      ),
                      WorkTimeWidget(sight: sight),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  DatailLocationWidget(sight: sight),
                  const SizedBox(
                    height: 24,
                  ),
                  const ButtonRouteWidget(),
                  const SizedBox(
                    height: 24,
                  ),
                  SvgPicture.asset(
                    AppAssets.line,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: const [
                      PlanningButton(),
                      ToFavoritesButtonWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
