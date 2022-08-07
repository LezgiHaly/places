// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen/visiting_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  Widget _listSkrins = const SightListScreen();
  Widget _map = const Center(
    child: Text('Map Screen'),
  );

  Widget _favorite = const VisitingScreen();
  Widget _setting = const Center(
    child: Text('Setting Screen'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icCalendar,
              width: 22,
              height: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icMap,
              width: 22,
              height: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icHeartFull,
              width: 22,
              height: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.icSettings,
            ),
            label: '',
          ),
        ],
        onTap: onTapHandler,
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return _listSkrins;
    } else if (selectedIndex == 1) {
      return _map;
    } else if (selectedIndex == 2) {
      return _favorite;
    } else {
      return _setting;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
