// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/res/themes.dart';
import 'package:places/ui/screen/SettingsScreen/settings_screen.dart';
import 'package:places/ui/screen/sight_list_screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen/visiting_screen.dart';

final isDark = ValueNotifier(false);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDark,
      builder: (_, value, child) => MaterialApp(
        theme: value ? darkTheme : lightTheme,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        home:
            // const
            // FiltersScreen(),
            const _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);

    tabController?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  Color? getColor(int index, BuildContext context) {
    return tabController?.index == index
        ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
        : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
  }

  // ignore: member-ordering-extended
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: tabController, children: const [
        SightListScreen(),
        Center(child: Text('Map Scrren')),
        VisitingScreen(),
        SettingsScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        currentIndex: tabController!.index,
        onTap: (currentIndex) {
          tabController?.animateTo(currentIndex);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icCalendar,
              width: 22,
              height: 20,
              color: getColor(0, context),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icMap,
              width: 22,
              height: 20,
              color: getColor(1, context),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icHeartFull,
              width: 22,
              height: 20,
              color: getColor(2, context),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icSettings,
              color: getColor(3, context),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
