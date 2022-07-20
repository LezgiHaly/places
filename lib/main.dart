// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Place',
      home: SightListScreen(),
      // MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    counter++;
    print(counter);

    // ignore: unused_element
    Type getContextType() => context.runtimeType;

    return Container(
      child: Center(child: Text('HI!')),
    );
  }
}

class MySecondWidgate extends StatefulWidget {
  MySecondWidgate({Key? key}) : super(key: key);

  @override
  State<MySecondWidgate> createState() => _MySecondWidgateState();
}

class _MySecondWidgateState extends State<MySecondWidgate> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Type getContextType() => context.runtimeType;

    counter++;
    print(counter);
    return Container(
      child: Center(child: Text('HI!')),
    );
  }
}
