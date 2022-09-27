import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/SettingsScreen/widgets/dark_theme_widget.dart';
import 'package:places/ui/screen/SettingsScreen/widgets/watch_tutorial_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          AppStrings.appBarSettings,
          style: AppTypography.textText18Medium
              .copyWith(color: Theme.of(context).appBarTheme.backgroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            SizedBox(
              height: 42,
            ),
            DarkThemeWidget(),
            SizedBox(
              height: 14,
            ),
            WatchTutorialWidget(),
          ],
        ),
      ),
    );
  }
}
