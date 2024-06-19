import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './gosync_text.dart';

class GoSyncScrollbar0 extends StatelessWidget {
  const GoSyncScrollbar0({super.key});

  @override
  Widget build(BuildContext context) {
    // print("home loaded GoSyncScrollbar0 Home");
    // return const Placeholder();

    // final yourScrollController = ScrollController();

    return Scrollbar(
      // thumbVisibility: true,
      // controller: yourScrollController,
      // controller: ScrollController.hasClients,
      // controller: PrimaryScrollController.of(context),
      child: ListView(
        children: <Widget>[
          const Text(
            'Home \nInstall Golang Page 0',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50.0),
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
          Text(
            '\n2 google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
            textAlign: TextAlign.center,
            // style: Theme.of(context).textTheme.headlineSmall,
            // style: Theme.of(context).primaryTextTheme.headlineMedium,
            style: GoogleFonts.allura(textStyle: Theme.of(context).textTheme.headlineMedium,
              // fontSize: 48,
              // fontWeight: FontWeight.w700,
              // fontStyle: FontStyle.italic,
            ),
          ),
          // override theme of context
          Text(
            '\n3 override theme &  google font Install Golang and GoEth Geth bare bones \n textTheme.headlineMedium\n',
            textAlign: TextAlign.center,
            style: GoogleFonts.allura(textStyle: Theme.of(context).textTheme.headlineMedium,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
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
                color: Colors.lightBlueAccent
              ),
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
          // ),
        ],
      ),
      // controller:
      // _scrollController = ScrollController(initialScrollOffset: 50.0);
      // ),
    );
  }
}
