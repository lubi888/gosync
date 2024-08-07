import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
import './main.dart';
import './gosync_home.dart';
import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
// import './gosync_text.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoSyncAbout extends StatelessWidget {
  // () => Scaffold.of(context).openDrawer();
  const GoSyncAbout({super.key});

  @override
  Widget build(BuildContext context) {
    () => Scaffold.of(context).openDrawer();

    return Scaffold(
      // Theme(data: data, child: child)
      //  theme: theme,
      // Print('about page loaded for install Golang');
      // appBar: const GoSyncAppBar(),
      // drawer: const GoSyncNavDrawer(),
      body: ListView(children: <Widget>[
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
