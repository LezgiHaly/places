import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/styles.dart';
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
      backgroundColor: Colors.white,
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
              padding: const EdgeInsets.only(
                left: 16,
                top: 24,
              ),
              child: NameLocationWidget(sight: sight),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 16),
              child: Row(
                children: [
                  TypeLocationWidget(sight: sight),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: WorkTimeWidget(sight: sight),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
              ),
              child: DatailLocationWidget(sight: sight),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
              ),
              child: ButtonRouteWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 16,
              ),
              child: SvgPicture.asset(
                AppAssets.line,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 16,
                right: 16,
              ),
              child: Row(
                children: const [
                  PlanningButton(),
                  ToFavoritesButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
