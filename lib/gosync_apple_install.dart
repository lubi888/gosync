import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import './main.dart';
// import './gosync_home.dart';
import './gosync_navdrawer.dart';
import './gosync_appbar.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
// import './main.dart';
// import './gosync_home.dart';
// import './gosync_appbar.dart';
// import './gosync_navdrawer.dart';
// import './gosync_text.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoSyncAppleInstall extends StatelessWidget {
  // () => Scaffold.of(context).openDrawer();
  const GoSyncAppleInstall({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('apple install page loaded Golang');
    // () => Scaffold.of(context).openDrawer();
    ScrollController scrollbarController = ScrollController();
    return Scaffold(

        // ScrollController scrollbarController = ScrollController();
      // controller: scrollbarController,
      // Theme(data: data, child: child)
      //  theme: theme,
      // Print('about page loaded for install Golang');
      // appBar: const GoSyncAppBar(),
      // appBar: AppBar(),
      // appBar: const GoSyncAppBar(),

    // appBar: AppBar(
    //   // title: const Text(goSyncTitle),
    //   centerTitle: true,
    //   // backgroundColor: Colors.amber,
    //   // foregroundColor: Colors.red,
    //   // elevation/: 30.0,
    //   title: Text(
    //     // goSyncTitle,
    //     AppLocalizations.of(context)!.title,
    //     textAlign: TextAlign.center,
    //     style: const TextStyle(
    //       // color: Colors.blue[900],
    //       // color: Colors.green,
    //       // backgroundColor: Color.fromARGB(255, 207, 160, 17),
    //       // backgroundColor: Colors.yellow,
    //       fontStyle: FontStyle.italic,
    //       fontSize: 24.0,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   bottom: TabBar(
    //     // controller: TabController(length: 3, vsync: vsync)
    //     // controller:
    //     // controller = TabController(length: 3, vsync: this);
    //     // ScrollController scrollbarController = ScrollController();
    //
    //       tabs: <Widget>[
    //         Tab(
    //             icon: const Icon(
    //               Icons.home,
    //               // color: Colors.redAccent
    //             ),
    //             child: Align(
    //               alignment: Alignment.center,
    //               child: Text(
    //                 // home
    //                   AppLocalizations.of(context)!.home),
    //             )),
    //         Tab(
    //             icon: const Icon(
    //               Icons.code,
    //               // color: Colors.orangeAccent
    //             ),
    //             height: 90.0,
    //             child: Align(
    //               alignment: Alignment.center,
    //               child: Text(
    //                 // gocode
    //                   AppLocalizations.of(context)!.golangInstall),
    //               // install golang and geth
    //             )),
    //         Tab(
    //             icon: const Icon(
    //               Icons.laptop,
    //               // color: Colors.greenAccent
    //             ),
    //             child: Align(
    //               alignment: Alignment.center,
    //               child: Text(AppLocalizations.of(context)!.danger),
    //             )),
    //       ]),
    // ),



      appBar: AppBar(
        // title: const Text('Tiny AppBar with hamburger button'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const GoSyncNavDrawer(),
      body: ListView(
          controller: scrollbarController,
          children: <Widget>[
        //     SelectableText(
        //   '\nInstall Golang and GoEth Geth bare bones.'
        //   '\nWritten using Flutter for mobile & desktop.'
        //   '\nCheck out our website GoSync.com.'
        //   '\nEmail us at bugs@gosync.com.'
        //   '\nLast update 07.2024',
        //   textAlign: TextAlign.left,
        //   style: GoogleFonts.allura(
        //     textStyle: Theme.of(context).textTheme.headlineMedium,
        //     fontSize: 48,
        //     fontWeight: FontWeight.w700,
        //     fontStyle: FontStyle.italic,
        //     backgroundColor: Colors.black,
        //   ),
        // );
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          // text: gosyncEmailAdress,
          // selecetable: true
          text: '\n1 Install Golang and GoEth Geth bare bones.'
              '\nWritten using Flutter for mobile & desktop.'
              '\nCheck out our website www.GoSync.com.'
              '\nEmail us at bugs@gosync.com.'
              '\nVersion 0.1.0'
              '\nLast update 07.2024',
          textAlign: TextAlign.center,
          style: GoogleFonts.allura(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            // backgroundColor: Colors.black,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // Colors.blue,
          // style: const TextStyle(
          //   color: Colors.green,
          //   // backgroundColor: Colors.amber,
          //   fontStyle: FontStyle.normal,
          //   fontSize: 25.0,
          // ),
          // linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // );
          // )
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          // color: Colors.black,
          // color: Theme.of(context).dialogBackgroundColor,
          // color: Theme.of(context).appBarTheme.backgroundColor,
          color: Theme.of(context).colorScheme.surface,

          child: Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            // text: gosyncEmailAdress,
            // selecetable: true
            text:
                '\n1b background = black continaer from 1 Install Golang and GoEth Geth bare bones.'
                '\nWritten using Flutter for mobile & desktop.'
                '\nCheck out our website www.GoSync.com.'
                '\nEmail us at bugs@gosync.com.'
                '\nVersion 0.1.0'
                '\nLast update 07.2024',
            textAlign: TextAlign.center,
            // selectable: true,
            style: GoogleFonts.allura(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
            // Colors.blue,
            // style: const TextStyle(
            //   color: Colors.green,
            //   // backgroundColor: Colors.amber,
            //   fontStyle: FontStyle.normal,
            //   fontSize: 25.0,
            // ),
            // linkStyle: GoogleFonts.allura(color: Colors.yellow),
            // );
            // )
          ),
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          // text: gosyncEmailAdress,
          // selecetable: true
          text: '\n2 Install Golang bare bones to professional level.'
              '\nWritten using Flutter for mobile & desktop.'
              '\nCheck out our website www.GoSync.com.'
              '\nEmail us at bugs@gosync.com.'
              '\nVersion 0.1.0'
              '\nLast update 07.2024',
          textAlign: TextAlign.center,
          // style: GoogleFonts.allura(
          //   textStyle: Theme.of(context).textTheme.headlineMedium,
          //   fontSize: 48,
          //   fontWeight: FontWeight.w700,
          //   fontStyle: FontStyle.italic,
          //   // backgroundColor: Colors.black,
          // ),
          // linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // Colors.blue,
          style: const TextStyle(
            color: Colors.green,
            // backgroundColor: Colors.amber,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // );
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          // text: gosyncEmailAdress,
          // selecetable: true
          text: '\n3 This is written under the Creative Commons License.'
              '\nSee https://creativecommons.org for more info.'
              '\nhttps://chooser-beta.creativecommons.org'
              '\nthe license is CC-BY-NC-SA 4.0'
              '\nhttps://creativecommons.org/licenses/by-nc-sa/4.0/'
              '\nThis work is licensed under CC BY 4.0 '
              '\nLast update 07.2024',
          textAlign: TextAlign.center,
          // style: GoogleFonts.allura(
          //   textStyle: Theme.of(context).textTheme.headlineMedium,
          //   fontSize: 48,
          //   fontWeight: FontWeight.w700,
          //   fontStyle: FontStyle.italic,
          //   // backgroundColor: Colors.black,
          // ),
          // linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // Colors.blue,
          style: const TextStyle(
            color: Colors.green,
            // backgroundColor: Colors.amber,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
          // );
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.black,
          child: Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            // text: gosyncEmailAdress,
            // selecetable: true
            text: '\n4 from 1 Install Golang and GoEth Geth bare bones.'
                '\nWritten using Flutter for mobile & desktop.'
                '\nCheck out our website www.GoSync.com.'
                '\nEmail us at bugs@gosync.com.'
                '\nVersion 0.1.0'
                '\nLast update 07.2024',
            textAlign: TextAlign.center,
            style: GoogleFonts.allura(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              // backgroundColor: Colors.black,
            ),
            linkStyle: GoogleFonts.allura(color: Colors.yellow),
            // Colors.blue,
            // style: const TextStyle(
            //   color: Colors.green,
            //   // backgroundColor: Colors.amber,
            //   fontStyle: FontStyle.normal,
            //   fontSize: 25.0,
            // ),
            // linkStyle: GoogleFonts.allura(color: Colors.yellow),
            // );
            // )
          ),
        ),
        //
      ]),
    );
  }
}
