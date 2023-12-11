import 'package:flutter/material.dart';
// import './gosync_appbar.dart';
import 'package:gosync/gosync_scrollbar0.dart';
import 'package:gosync/gosync_scrollbar1.dart';
import 'package:gosync/gosync_scrollbar2.dart';

// import './gosync_text.dart';
// import "./appbar.dart";
// import 'dart:async';

class GoSyncHome extends StatelessWidget {
  const GoSyncHome({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print("gosync_home loaded");
    return const TabBarView(children: <Widget>[
      GoSyncScrollbar1(),
      GoSyncScrollbar2(),
      GoSyncScrollbar0()
      // gosyncscrollbar2(),
    ]);
  }
}
