import 'package:flutter/material.dart';

import 'package:places/mocks.dart';

import 'package:places/ui/screen/sight_card.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        toolbarHeight: 150,
        title: appBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mocks.map((sight) => SightCard(sight: sight)).toList(),
        ),
      ),
    );
  }

  Widget testWidget() {
    return Center(
      child: Text("Hi!"),
    );
  }

  Widget appBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'С',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'писок',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'и',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'нтересных мест',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
