import 'package:flutter/material.dart';
import './gosync_text.dart';

class GoSyncScrollbar1 extends StatelessWidget {
  const GoSyncScrollbar1({super.key});

  @override
  Widget build(BuildContext context) {
    print("coad loaded GoSyncScrollbar1");
    // return const Placeholder();
    return Scrollbar(
        child: Container(
      color: Colors.amber,
      child: ListView(
        children: const <Widget>[
          // Container(
          // child:
          Text(
            'Code \nInstall Golang and GoEth Geth bare bones Page 1',
            textAlign: TextAlign.center,
            style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.indigo,
                fontSize: 50.0),
          ),
          // ),
          // Container(
          // child:
          Text(
            'Install Golang and GoEth Geth bare bones',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 40.0,
                fontStyle: FontStyle.italic),
          ),
          // ),
          // Container(
          // child:
          Text(
            textAlign: TextAlign.center,
            ethSyncPrimaryGoals,
            style: TextStyle(
                color: Colors.green, backgroundColor: Colors.yellowAccent),
          ),
          // ),        ],
        ],
      ),
    ));
  }
}
