// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // import 'package:intl/intl.dart';
// import './gosync_appbar.dart';
// import './gosync_navdrawer.dart';
// import './gosync_home.dart';
// import './gosync_text.dart';

// void main() {
//   runApp(const GoSync());
// }

// class GoSync extends StatelessWidget {
//   const GoSync({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: goSyncTitle,
//       theme: ThemeData(
//         // This is the theme of your application.
//         useMaterial3: true,

//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.purple,
//           // ···
//           brightness: Brightness.dark,
//         ),
//         textTheme: TextTheme(
//           displayLarge: const TextStyle(
//             fontSize: 72,
//             fontWeight: FontWeight.bold,
//           ),
//           // ···
//           titleLarge: GoogleFonts.oswald(
//             fontSize: 30,
//             fontStyle: FontStyle.italic,
//           ),
//           bodyMedium: GoogleFonts.merriweather(),
//           displaySmall: GoogleFonts.pacifico(),
//         ),
//       ),
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('en'), // English
//         Locale('fr'), // Francais
//         Locale('de'), // Deutsch
//         // Locale('ga'), // Gaeilge
//       ],
//       home: const DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: GoSyncAppBar(),
//           drawer: GoSyncNavDrawer(),
//           // endDrawer: GoSyncOpenDrawer(),
//           body: GoSyncHome(
//             title: goSyncTitle,
//           ),
//           //add bottom navigation from top app || side nav drawer.
//           // bottomNavigationBar: GoSyncBottomNavBar(),
//           // drawerDragStartBehavior:
//         ),
//       ),
//     );
//   }
// }
