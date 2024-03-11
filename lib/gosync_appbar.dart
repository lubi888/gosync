import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';

// //   // appBar: AppBar(
// //   // Here we take the value from the GoSyncHome object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title)
const double kToolbarHeight = 155.0;

class GoSyncAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GoSyncAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // whatever height you want

  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();
    // Scaffold.of(context).openDrawer();
    // return const Placeholder();
    debugPrint("ethsync appbar loaded");
    print(TimeOfDay.now());

    return AppBar(
      // title: const Text(goSyncTitle),
      centerTitle: true,
      // backgroundColor: Colors.amber,
      // foregroundColor: Colors.red,
      // elevation/: 30.0,
      title: Text(
        // goSyncTitle,
        AppLocalizations.of(context)!.title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          // color: Colors.blue[900],
          color: Colors.green,
          // backgroundColor: Color.fromARGB(255, 207, 160, 17),
          backgroundColor: Colors.yellow,
          fontStyle: FontStyle.italic,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: TabBar(tabs: <Widget>[
        Tab(
            icon: const Icon(Icons.home, color: Colors.redAccent),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                  // home
                  AppLocalizations.of(context)!.home),
            )),
        Tab(
            icon: const Icon(Icons.code, color: Colors.orangeAccent),
            height: 90.0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                  // gocode
                  AppLocalizations.of(context)!.golangInstall),
              // install golang and geth
            )),
        Tab(
            icon: const Icon(Icons.laptop, color: Colors.greenAccent),
            child: Align(
              alignment: Alignment.center,
              child: Text(AppLocalizations.of(context)!.danger),
            )),
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
