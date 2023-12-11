import 'package:flutter/material.dart';
// import './gosync_text.dart';

// //   // appBar: AppBar(
// //   // Here we take the value from the GoSyncHome object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title)
// const double kToolbarHeight = 155.0;

class GoSyncSliverAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const GoSyncSliverAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // whatever height you want

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    print("ethsync sliver appbar loaded");
    print(TimeOfDay.now());

    return SliverAppBar(
      expandedHeight: 300.0,
      floating: false,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          collapseMode: CollapseMode.parallax,
          title: const Text("Collapsing Appbar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              )),
          background: Image.network(
            "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            fit: BoxFit.cover,
          )),
    );
    // ];
  }

  // return AppBar(
  //   // title: const Text(goSyncTitle),
  //   centerTitle: true,
  //   // backgroundColor: Colors.amber,
  //   // foregroundColor: Colors.red,
  //   // elevation/: 30.0,
  //   title: const Text(
  //     goSyncTitle,
  //   ),
  // bottom: const TabBar(tabs: <Widget>[
  //   Tab(
  //       icon: Icon(Icons.home, color: Colors.redAccent),
  //       child: Align(
  //         alignment: Alignment.center,
  //         child: Text(home),
  //       )),
  //   Tab(
  //       icon: Icon(Icons.code, color: Colors.orangeAccent),
  //       height: 90.0,
  //       child: Align(
  //         alignment: Alignment.center,
  //         child: Text(gocode),
  //         // install golang and geth
  //       )),
  //   Tab(
  //       icon: Icon(Icons.laptop, color: Colors.greenAccent),
  //       child: Align(
  //         alignment: Alignment.center,
  //         child: Text(danger),
  //         // presence
  //       )),
  //   // Tab(
  //   //     child: Align(
  //   //       alignment: Alignment.center,
  //   //       child: Text(learn),
  //   //       // \ntechnical blockchain details
  //   //     ),
  //   //     icon: Icon(Icons.school, color: Colors.limeAccent)),
  //   // Tab(
  //   //     child: Align(
  //   //       alignment: Alignment.center,
  //   //       child: SelectableText(danger),
  //   //       //  \nexperimental software
  //   //     ),
  //   //     icon: Icon(Icons.dangerous, color: Colors.red)),
  // ]),
  // );
}
// }


