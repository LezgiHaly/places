// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

// AppBar

// ignore: unused_element
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      toolbarHeight: 150,
      title: const _AppBartitle(),
    );
  }

  // ignore: member-ordering-extended
  @override
  Size get preferredSize => const Size.fromHeight(110);
}

class _AppBartitle extends StatelessWidget {
  const _AppBartitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomLeft,
      child: SafeArea(
        child: Text(
          AppStrings.appBar,
        ),
      ),
    );
  }
}
