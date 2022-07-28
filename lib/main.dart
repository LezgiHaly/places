// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

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
      home: SightListScreen(),
    );
  }
}
