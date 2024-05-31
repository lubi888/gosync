import 'package:flutter/material.dart';
import './gosync_text.dart';

class GoSyncScrollbar0 extends StatelessWidget {
  const GoSyncScrollbar0({super.key});

  @override
  Widget build(BuildContext context) {
    print("home loaded GoSyncScrollbar0 Home");
    // return const Placeholder();
    return Scrollbar(
      // child: Container(
      // color: Colors.amber,
      child: ListView(
        children: <Widget>[
          // children: const <Widget>[
          // Container(
          // child:
          const Text(
            'Home \nInstall Golang Page 0',
            textAlign: TextAlign.center,
            style: TextStyle(
                // backgroundColor: Colors.amber,
                // color: Colors.indigo,
                fontSize: 50.0),
          ),
          // ),
          // Container(
          // child:
          Text(
            '\nInstall Golang and GoEth Geth bare bones \n textTheme.headlineLarge\n',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
            //   style: TextStyle(
            //       // color: Colors.blueAccent,
            //       fontSize: 40.0,
            //       fontStyle: FontStyle.italic),
          ),
          const Text(
            textAlign: TextAlign.center,
            ethSyncPrimaryGoals,
            style: TextStyle(
                // color: Colors.green, backgroundColor: Colors.yellowAccent),
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
    );
  }
}
