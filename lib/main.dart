import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:json_theme/json_theme.dart';
import 'package:flutter/services.dart'; // for root bundle
import 'dart:convert'; // json decode

import './gosync_appbar.dart';
import './gosync_navdrawer.dart';
import './gosync_home.dart';
import './gosync_text.dart';
import './gosync_about.dart';
import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';

// add async to main
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // https://appainter.dev/
  final themeStr =
      // await rootBundle.loadString('assets/themes/appainter_theme.json');
      // await rootBundle.loadString('assets/themes/appainter_theme_dark.json');
      // await rootBundle.loadString('assets/themes/appainter_theme_green.json');
      // await rootBundle.loadString('assets/themes/appainter_theme_green2.json');
      // .loadString('assets/themes/appainter_theme_dark_green2.json');
      // await rootBundle.loadString('assets/themes/appainter_theme3.json');
      // .loadString('assets/themes/appainter_theme_seed_mint.json');
      await rootBundle
          .loadString('assets/themes/appainter_theme_dark_green.json');

  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(GoSync(theme: theme));
}

class GoSync extends StatelessWidget {
  final ThemeData theme;
  // const GoSync({super.key});
  const GoSync({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: goSyncTitle,
      theme: theme,
      //Google example
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   useMaterial3: true,

      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.purple,
      //     // ···
      //     brightness: Brightness.dark,
      //   ),
      //   textTheme: TextTheme(
      //     displayLarge: const TextStyle(
      //       fontSize: 72,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     // ···
      //     titleLarge: GoogleFonts.oswald(
      //       fontSize: 30,
      //       fontStyle: FontStyle.italic,
      //     ),
      //     bodyMedium: GoogleFonts.merriweather(),
      //     displaySmall: GoogleFonts.pacifico(),
      //   ),
      // ),

      // setting theme Material
      // theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      initialRoute: '/',
      routes: {
        // '/': (context) => const GoSyncHome(title: goSyncTitle),
        '/about': (BuildContext context) => const GoSyncAbout(),
        '/scrollbar0': (BuildContext context) => const GoSyncScrollbar0(),
        '/scrollbar1': (BuildContext context) => const GoSyncScrollbar1(),
        '/scrollbar2': (BuildContext context) => const GoSyncScrollbar2(),
        '/navdrawer': (BuildContext context) => const GoSyncNavDrawer(),
      },

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
        // controller = TabController(vsync: this, length: 3);
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: GoSyncAppBar(),
          drawer: GoSyncNavDrawer(),
          // endDrawer: GoSyncOpenDrawer(),
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
