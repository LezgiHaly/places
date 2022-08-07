import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/visiting_screen/visited/empty_visited_screen.dart';
import 'package:places/ui/screen/visiting_screen/visited/visited_screen.dart';
import 'package:places/ui/screen/visiting_screen/want_to_visit/emty_want_to_visit.dart';
import 'package:places/ui/screen/visiting_screen/want_to_visit/want_to_visit_screen.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.textWhiteColor,
        appBar: AppBar(
          toolbarHeight: 122,
          elevation: 0,
          backgroundColor: AppColors.textWhiteColor,
          title: Text(
            AppStrings.appTitleFavorit,
            style: AppTypography.textText18Medium
                .copyWith(color: AppColors.appColor),
          ),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.cardBackColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TabBar(
                  unselectedLabelColor:
                      AppColors.textGrayColor.withOpacity(0.5),
                  indicator: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: AppColors.appColor,
                  ),
                  tabs: const [
                    Tab(
                      child: Text(
                        AppStrings.wantToVisit,
                        style: AppTypography.textText14Bold,
                      ),
                    ),
                    Tab(
                      child: Text(
                        AppStrings.wantToVisit,
                        style: AppTypography.textText14Bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: TabBarView(
            children: [
              if (mocksFavorites.isNotEmpty)
                SingleChildScrollView(
                  child: Column(
                    children: mocksFavorites
                        .map(
                          (sight) => WantToVisitScreen(sight: sight),
                        )
                        .toList(),
                  ),
                )
              else
                const EmtyWantToVisit(),
              if (mocksVisited.isNotEmpty)
                SingleChildScrollView(
                  child: Column(
                    children: mocksVisited
                        .map(
                          (sight) => VisitedScreen(sight: sight),
                        )
                        .toList(),
                  ),
                )
              else
                const EmptyVisitedScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
