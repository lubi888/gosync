import 'package:flutter/material.dart';
import './gosync_text.dart';

// //   // appBar: AppBar(
// //   // Here we take the value from the GoSyncHome object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title)
const double kToolbarHeight = 100.0;

class GoSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GoSyncAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // whatever height you want

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();

    print("ethsync appbar loaded");
    print(TimeOfDay.now());

    return AppBar(
      // title: const Text(goSyncTitle),
      centerTitle: true,
      backgroundColor: Colors.amber,
      foregroundColor: Colors.red,
      elevation: 30.0,
      title: const SelectableText(goSyncTitle),
      bottom: const TabBar(tabs: [
        Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(home),
            ),
            icon: Icon(Icons.home, color: Colors.redAccent)),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Text(code),
            // install golang and geth
          ),
          icon: Icon(Icons.code, color: Colors.orangeAccent),
        ),
        Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(online),
              // presence
            ),
            icon: Icon(Icons.laptop, color: Colors.greenAccent)),
        // Tab(
        //     child: Align(
        //       alignment: Alignment.center,
        //       child: Text(learn),
        //       // \ntechnical blockchain details
        //     ),
        //     icon: Icon(Icons.school, color: Colors.limeAccent)),
        // Tab(
        //     child: Align(
        //       alignment: Alignment.center,
        //       child: SelectableText(danger),
        //       //  \nexperimental software
        //     ),
        //     icon: Icon(Icons.dangerous, color: Colors.red)),
      ]),
    );
  }
}
