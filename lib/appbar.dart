import 'package:flutter/material.dart';
import './gosync_text.dart';

// //   // appBar: AppBar(
// //   // Here we take the value from the GoSyncHome object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title)
const double kToolbarHeight = 50.0;

class GoSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GoSyncAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // whatever height you want

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return AppBar(
      title: const Text(goSyncTitle),
      centerTitle: true,
      backgroundColor: Colors.amber,
      foregroundColor: Colors.red,
      elevation: 30.0,
    );
  }
}
