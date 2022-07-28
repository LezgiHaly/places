import 'package:flutter/material.dart';

import 'package:places/mocks.dart';

import 'package:places/ui/screen/sight_card_screen/sight_card.dart';
import 'package:places/ui/widget/app_bar_title.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          toolbarHeight: 150,
          title:
              const AppBartitle(), // ? как опусть надпись ближе к картам интерсных мест?
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mocks.map((sight) => SightCard(sight: sight)).toList(),
        ),
      ),
    );
  }
}
