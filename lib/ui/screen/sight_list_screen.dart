import 'package:flutter/material.dart';

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
      body: testWidget(),
    );
  }
}

Widget testWidget() {
  return Center(
    child: Text("Hello!"),
  );
}

Widget appBarTitle() {
  return Text(
    'Список \nинтересных мест',
    style: TextStyle(
      fontSize: 32,
      color: Colors.black,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
    ),
  );
}
