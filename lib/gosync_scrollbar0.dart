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
        children: const <Widget>[
          // Container(
          // child:
          Text(
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
            'Install Golang and GoEth Geth bare bones',
            textAlign: TextAlign.center,
            style: TextStyle(
                // color: Colors.blueAccent,
                fontSize: 40.0,
                fontStyle: FontStyle.italic),
          ),
          Text(
            textAlign: TextAlign.center,
            ethSyncPrimaryGoals,
            // style: TextStyle(
            // color: Colors.green, backgroundColor: Colors.yellowAccent),
          ),
          Text(
            textAlign: TextAlign.center,
            goSyncGoogleAIParameters,
            // style: TextStyle(
            // color: Colors.blue, backgroundColor: Colors.yellowAccent),
          ),
          Text(
            textAlign: TextAlign.left,
            goSyncGoogleAIExample,
            // style: TextStyle(
            // color: Colors.blue, backgroundColor: Colors.yellowAccent),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              textAlign: TextAlign.left,
              goSyncGoogleAIExample,
              // style: TextStyle(
              // color: Colors.blue, backgroundColor: Colors.yellowAccent),
            ),
          ),
          Text(
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
      // )
    );
  }
}
