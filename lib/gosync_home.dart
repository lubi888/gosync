import 'package:flutter/material.dart';
import 'package:gosync/gosync_scrollbar0.dart';
// import './gosync_text.dart';
// import "./appbar.dart";
// import 'dart:async';

class GoSyncHome extends StatefulWidget {
  const GoSyncHome({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<GoSyncHome> createState() => _GoSyncHomeState();
}

class _GoSyncHomeState extends State<GoSyncHome> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("gosync_home loaded");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    // return Scrollbar(child: ListView(children: <Widget>[

    // ],),))
    return GoSyncScrollbar0();

    // return Scrollbar(
    //     child: Container(
    //   color: Colors.amber,
    //   child: ListView(
    //     children: <Widget>[
    //       Container(
    //         child: const Text(
    //           'Install Golang and GoEth Geth bare bones',
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               backgroundColor: Colors.amber,
    //               color: Colors.indigo,
    //               fontSize: 50.0),
    //         ),
    //       ),
    //       Container(
    //         child: const Text(
    //           'Install Golang and GoEth Geth bare bones',
    //           textAlign: TextAlign.end,
    //           style: TextStyle(
    //               color: Colors.blueAccent,
    //               fontSize: 40.0,
    //               fontStyle: FontStyle.italic),
    //         ),
    //       ),
    //       Container(
    //         child: const Text(
    //           ethSyncPrimaryGoals,
    //           style: TextStyle(
    //               color: Colors.green, backgroundColor: Colors.yellowAccent),
    //         ),
    //       ),
    //     ],
    //   ),
    // ));
  }
}
