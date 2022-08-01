// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:places/ui/widget/app_bar_title.dart';

// AppBar
// ignore: unused_element
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      toolbarHeight: 150,
      title: const AppBartitle(),
    );
  }

  // ignore: member-ordering-extended
  @override
  Size get preferredSize => const Size.fromHeight(110);
}
