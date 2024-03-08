import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:intl/intl.dart';
import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
import './gosync_home.dart';
import './gosync_text.dart';

void main() {
  runApp(const GoSync());
}

class GoSync extends StatelessWidget {
  const GoSync({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: goSyncTitle,
      // locale myLocale: Localizations.localeOf(context),
      // locale: const Locale('en', 'US'),
      //  Locale? myLocale = Localizations.localeOf(context);
      // print(myLocale.toString() + ' on _EthSyncPageState');
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        // primarySwatch: Colors.green,
        // primaryColorDark: Colors.amber,
        // primaryColorLight: Colors.pinkAccent,
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        // accentColor: Colors.green,
        // accentColorBrightness: Brightness.light,
        // textSelectionTheme: Colors.purple,
        // Colors.orange,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fr'), // Francais
        Locale('de'), // Deutsch
        // Locale('ga'), // Gaeilge
      ],
      home: const DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: GoSyncAppBar(),
          // appBar: GoSyncSliverAppBar(),
          // appBar: CollapsingAppbarPage(),
          // drawer: GoSyncNavDrawer(),
          drawer: GoSyncNavDrawer(),
          //  => Scaffold.of(context).openDrawer(),
          // onDrawerChanged: ,
          // endDrawer: GoSyncOpenDrawer(),
          // Scaffold.of(context).openDrawer();
          body: GoSyncHome(
            title: goSyncTitle,
          ),
          //add bottom navigation from top app || side nav drawer.
          // bottomNavigationBar: GoSyncBottomNavBar(),
          // drawerDragStartBehavior:
        ),
      ),
    );
  }
}
