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
        appBar: AppBar(
          toolbarHeight: 122,
          elevation: 0,
          title: const Text(
            AppStrings.appTitleFavorit,
            style: AppTypography.textText18Medium,
          ),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TabBar(
                  labelColor: Theme.of(context).tabBarTheme.labelStyle?.color,
                  unselectedLabelColor:
                      Theme.of(context).textTheme.bodyText1?.color,
                  indicator: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Theme.of(context).tabBarTheme.labelColor,
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
                        AppStrings.visited,
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
