import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './gosync_text.dart';
import './gosync_navdrawer.dart';

class GoSyncScrollbar0 extends StatelessWidget {
  const GoSyncScrollbar0({super.key});

  // ScrollController scrollbarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    debugPrint('scrollbar0 loaded install Golang');
    ScrollController scrollbarController = ScrollController();

    return Scaffold(
      // print("home loaded GoSyncScrollbar0 Home");
      // return const Placeholder();
      // debugPrint('scrollbar0 loaded install Golang');

      // final yourScrollScrollbarController = ScrollScrollbarController();
      // const Scaffold();
      // return Scrollbar(
      // appBar: AppBar,
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
      body: Scrollbar(
        controller: scrollbarController,
        // thumbVisibility: true,
        // controller: yourScrollController,
        // controller: ScrollController.hasClients,
        // controller: PrimaryScrollController.of(context),
        child: ListView(
          controller: scrollbarController,
          children: <Widget>[
            const Text(
              'Home \nInstall Golang Page 0',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50.0),
            ),
            // expansion tile
            ExpansionTile(
              initiallyExpanded: true,
              title: const Text(
                "platform installation",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
              leading: const Icon(
                FontAwesomeIcons.computer,
                color: Colors.green,
              ), //add icon
              childrenPadding:
                  const EdgeInsets.only(left: 30), //children padding
              children: [
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.windows,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'windows platform golang',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'windows go install',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.windows,
                        color: Colors.lightGreen),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/windowsInstall');
                    }),
                // list tile 5 deep link XTwitter
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.apple,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Apple iOS',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'apple programming',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing: const Icon(FontAwesomeIcons.apple,
                        color: Colors.blueGrey),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/appleInstall');
                    }),
                // list tile 5 deep link youtube
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.linux,
                      color: Colors.red,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit Linux golang install',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'deep link linux',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.yellow),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.linux, color: Colors.blue),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                      Navigator.pushNamed(context, '/linuxInstall');
                    }),
                ListTile(
                    leading: const Icon(
                      // Icons.tv,
                      FontAwesomeIcons.linux,
                      color: Colors.yellow,
                    ),
                    title: const Text(
                      // 'add eth|etc address - acccount',
                      'visit GNU Not Unix golang install',
                      // AppLocalizations.of(context)!.visitGoDevPlay,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      // 'https://play.golang.com/',
                      'deep gnu linux',
                      // https://go.dev/play/
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.purple),
                    ),
                    trailing:
                        const Icon(FontAwesomeIcons.linux, color: Colors.pink),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // _launchYouTube();
                    }),
              ],
            ),
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n primaryTextTheme.headlineLarge\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headlineLarge,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n primaryTestTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headlineMedium,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            Text(
              '\nInstall Golang and GoEth Geth bare bones \n textTheme.headlineSmall\n',
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              style: Theme.of(context).primaryTextTheme.headlineSmall,
              //   style: TextStyle(
              //       // color: Colors.blueAccent,
              //       fontSize: 40.0,
              //       fontStyle: FontStyle.italic),
            ),
            SelectableText(
              '\n2 selectable text google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineMedium,
              style: GoogleFonts.allura(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                // fontSize: 48,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
              ),
            ),
            // override theme of context
            Text(
              '\n3 override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              textAlign: TextAlign.center,
              style: GoogleFonts.allura(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  backgroundColor: Colors.black),
            ),

            Column(
              children: [
                Text(
                  '\n4 column override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: GoogleFonts.allura(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      backgroundColor: Colors.black),
                ),
              ],
            ),

            Container(
              // children: [
              padding: const EdgeInsets.all(20.0),
              color: Colors.black,
              child: Text(
                '\n5 override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
                textAlign: TextAlign.left,
                softWrap: true,
                style: GoogleFonts.allura(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.black),
              ),
              // ],
            ),
            const Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              style: TextStyle(
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                color: Colors.lightGreen,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              style: GoogleFonts.lobster(
                // TextStyle(
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              ethSyncPrimaryGoals,
              // style: Theme.of(context).primaryTextTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineSmall,
              style: GoogleFonts.acme(
                // style: Theme.of(context).primaryTextTheme.headlineSmall,
                // TextStyle
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
                textStyle: const TextStyle(
                    fontSize: 26,
                    // style:
                    // style: Theme.of(context).primaryTextTheme.headlineSmall,
                    color: Colors.lightBlueAccent),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              goSyncGoogleAIParameters,
              style: TextStyle(
                  // color: Colors.blue, backgroundColor: Colors.yellowAccent),
                  ),
            ),
            const Text(
              textAlign: TextAlign.left,
              goSyncGoogleAIExample,
              style: TextStyle(
                  // color: Colors.blue, backgroundColor: Colors.yellowAccent),
                  ),
            ),
            const Text(
              // 'Install Golang and GoEth Geth bare bones',
              ethTextFonts,
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: Colors.blueAccent,
                fontSize: 40.0,
                // fontStyle: FontStyle.italic
              ),
            ),
            Text(
              // '\n2 google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
              ethTextFonts,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headlineSmall,
              // style: Theme.of(context).primaryTextTheme.headlineMedium,
              style: GoogleFonts.notoSansEgyptianHieroglyphs(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                // fontSize: 48,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
