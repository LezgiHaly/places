import 'package:flutter/cupertino.dart';
import 'package:places/main.dart';

class SwitchThemeWidget extends StatefulWidget {
  const SwitchThemeWidget({Key? key}) : super(key: key);

  @override
  State<SwitchThemeWidget> createState() => _SwitchThemeWidgetState();
}

class _SwitchThemeWidgetState extends State<SwitchThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isDark.value,
      onChanged: (value) {
        setState(() {
          isDark.value = value;
        });
      },
    );
  }
}
