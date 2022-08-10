import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card_screen/sight_card.dart';
import 'package:places/ui/widget/app_bar_widget.dart';

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
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: mocks.map((sight) => SightCard(sight: sight)).toList(),
        ),
      ),
    );
  }
}
