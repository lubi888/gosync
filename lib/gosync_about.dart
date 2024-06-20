import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoSyncAbout extends StatelessWidget {
  const GoSyncAbout({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return ListView(
      children: <Widget>[
        Text(
          '\nInstall Golang and GoEth Geth bare bones \n primaryTestTheme.headlineMedium\n',
          textAlign: TextAlign.center,
          style: Theme.of(context).primaryTextTheme.headlineMedium,
          //   style: TextStyle(
          //       // color: Colors.blueAccent,
          //       fontSize: 40.0,
          //       fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
