import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
// import './gosync_text.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoSyncAbout extends StatelessWidget {
  const GoSyncAbout({super.key});

  @override
  Widget build(BuildContext context) {
    // return
    return ListView(children: <Widget>[
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
        text: '\nInstall Golang and GoEth Geth bare bones.'
            '\nWritten using Flutter for mobile & desktop.'
            '\nCheck out our website www.GoSync.com.'
            '\nEmail us at bugs@gosync.com.'
            '\nVersion 0.0.1'
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
      Linkify(
        onOpen: (link) async {
          if (!await launchUrl(Uri.parse(link.url))) {
            throw Exception('Could not launch ${link.url}');
          }
        },
        // text: gosyncEmailAdress,
        // selecetable: true
        text: '\nInstall Golang bare bones to professional level.'
            '\nWritten using Flutter for mobile & desktop.'
            '\nCheck out our website www.GoSync.com.'
            '\nEmail us at bugs@gosync.com.'
            '\nVersion 0.0.1'
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
      )
      //
    ]);
  }
}
