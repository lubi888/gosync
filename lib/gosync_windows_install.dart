import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './gosync_navdrawer.dart';

class GoSyncWindowsInstall extends StatelessWidget {
  const GoSyncWindowsInstall({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('windows install  page loaded Golang');
    // () => Scaffold.of(context).openDrawer();
    ScrollController scrollbarController = ScrollController();
    return Scaffold(
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
      body: ListView(controller: scrollbarController, children: <Widget>[
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text:
              "1, Open the MSI file you downloaded and follow the prompts to install Go. \n\nBy default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.",
          textAlign: TextAlign.center,
          style: GoogleFonts.allura(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            // backgroundColor: Colors.black,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
        ),

        const Padding(padding: EdgeInsets.all(16.0)),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SelectableText(
            // ethCheckGoHelp,
            AppLocalizations.of(context)!.gosyncWindowsInstallInstructions,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.yellowAccent,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
        ),

        // const Padding(padding: EdgeInsets.all(16.0)),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SelectableText(
            // ethCheckGoHelp,
            AppLocalizations.of(context)!.gosyncWindowsInstallInstructions2,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SelectableText(
            // ethCheckGoHelp,
            AppLocalizations.of(context)!.gosyncWindowsInstallInstructions3,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SelectableText(
            // ethCheckGoHelp,
            AppLocalizations.of(context)!.gosyncWindowsInstallInstructions4,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Colors.yellowAccent,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SelectableText(
            // ethCheckGoHelp,
            AppLocalizations.of(context)!.gosyncWindowsInstallInstructions5,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
            ),
          ),
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text: AppLocalizations.of(context)!.gosyncWindowsInstallInstructions5,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.green,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          // linkStyle: GoogleFonts.allura(color: Colors.orangeAccent),
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text: AppLocalizations.of(context)!.gosyncWindowsInstallInstructions5,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.green,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          color: Theme.of(context).colorScheme.surface,
          child: Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
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
          ),
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text:
              "Open the MSI file you downloaded and follow the prompts to install Go. By default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.green,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.yellow),
        ),
        Linkify(
          onOpen: (link) async {
            if (!await launchUrl(Uri.parse(link.url))) {
              throw Exception('Could not launch ${link.url}');
            }
          },
          text:
              "Open the MSI file you downloaded and follow the prompts to install Go. \nBy default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.",
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.yellowAccent,
            // backgroundColor: Colors.amber,
            fontStyle: FontStyle.normal,
            fontSize: 25.0,
          ),
          linkStyle: GoogleFonts.allura(color: Colors.greenAccent),
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
          ),
        ),
        //
      ]),
    );
  }
}
