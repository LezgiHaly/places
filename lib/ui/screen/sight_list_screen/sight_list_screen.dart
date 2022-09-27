import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card_screen/sight_card.dart';
import 'package:places/ui/screen/sight_list_screen/widget/search_widget.dart';
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
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchWidget(),
            ),
            Column(
              children: mocks.map((sight) => SightCard(sight: sight)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
