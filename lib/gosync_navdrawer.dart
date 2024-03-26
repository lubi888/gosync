import 'package:flutter/material.dart';
// import 'package:gosync/gosync_text.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import './gosync_urllinks.dart';
// import './ethsync_walletdrawer.dart';
// import './ethsync_barcodescanner.dart';
// import './ethsync_extendedimage.dart';
// import './ethsync_scrollbar0.dart';
// import './ethsync_scrollbar1.dart';

// import './gosync_scrollbar0.dart';
import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';
// import './ethsync_scrollbar3.dart';
// import './ethsync_scrollbar4.dart';

const String _kAsset1 = 'assets/images/golang_developers.png';

class GoSyncNavDrawer extends StatelessWidget {
  const GoSyncNavDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    // Scaffold.of(context).openDrawer();
    return Drawer(
      // background color for entier drawer. default black
      // backgroundColor: Colors.white,
      child: ListView(
        // padding: EdgeInsets.zero,
        // padding: EdgeInsets.,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: AssetImage(_kAsset1), fit: BoxFit.fill),
            ),
            child: Text(
              // drawerHeader,
              AppLocalizations.of(context)!.drawerHeader,
              // style: const TextStyle(color: Colors.purpleAccent),
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          // DrawerTheme(data: Colors.blue, child: child),
          // List Tile 1
          ListTile(
              leading: const Icon(
                // Icons.access_alarms,
                FontAwesomeIcons.golang,
                color: Colors.redAccent,
              ),
              title: const Text(
                'visit go.dev',
                // 'visit https://go.dev/',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'main go website',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                _launchGoDev();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const GoSyncScrollbar2()));
                // Navigator.pop(context);
              }),
          // // list tile 2
          // ListTile(
          //     leading: const Icon(
          //       Icons.school,
          //       color: Colors.orangeAccent,
          //     ),
          //     title: const Text('begin learning ethSync',
          //         style: TextStyle(color: Colors.orangeAccent)),
          //     subtitle: const Text(
          //       'proof of work||stake',
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic, color: Colors.blueAccent),
          //     ),
          //     trailing: const Icon(
          //       Icons.school,
          //       color: Colors.greenAccent,
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const GoSyncScrollbar2()));
          //       // context, MaterialPageRoute(builder: (context) => Pesto()));
          //       // context, MaterialPageRoute(builder: (context) => Pesto()));
          //     }),
          //  ListTile 3 visit Go Play
          //  list tile 2
          ListTile(
              leading: const Icon(
                // Icons.account_balance,
                FontAwesomeIcons.golang,
                color: Colors.redAccent,
              ),
              title: Text(
                // 'add eth|etc address - acccount',
                // 'visit go playground',
                // visitGoPlayground,
                AppLocalizations.of(context)!.visitGoPlayground,
                style: const TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'play.golang.com',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                _launchPlayGolangHelloCode();
              }),
          // list tile 3     go play version 2
          ListTile(
              leading: const Icon(
                // Icons.account_balance,
                FontAwesomeIcons.golang,
                color: Colors.teal,
              ),
              title: Text(
                // 'add eth|etc address - acccount',
                // 'visit go playground',
                // visitGoPlayground,
                AppLocalizations.of(context)!.visitGoDevPlay,
                style: const TextStyle(color: Colors.teal),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'go.dev/play',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.teal),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchPlayGolang();
              }),
          // list tile 4b gopher guides.
          ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.teal,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit gopher guides',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.teal),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'gopher guide tutorials',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.teal),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchGopherGuides();
              }),
          // list tile 5 deep link youtube
          ListTile(
              leading: const Icon(
                // Icons.tv,
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit youtube go programming',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep link to youtube from google',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing: const Icon(Icons.computer, color: Colors.green),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchYouTube();
                //   launch deep linking youtube.
              }),
          // list tile 5 deep link youtube
          ListTile(
              leading:
                  const Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue
                      // Icons.alternate_email_rounded,
                      // Icons.flutter_dash,
                      // color: Colors.lightBlue,
                      ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit twitter X @golang go programming surface link',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep link to X Twitter',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing: const Icon(
                Icons.flutter_dash,
                color: Colors.lightBlue,
              ),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchTwitterGolang();
                //   launch deep linking youtube.
              }),
          // list tile 6 github deep link github
          ListTile(
              leading: const Icon(
                // Icons.desktop_windows,
                FontAwesomeIcons.github,
                color: Colors.green,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit github go with surface link',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.green),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep link to github go',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing: const Icon(Icons.computer, color: Colors.green),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchGithubGo();
                //   launch deep linking youtube.
              }),

          ListTile(
              leading: const Icon(
                // Icons.desktop_windows,
                FontAwesomeIcons.slack,
                color: Colors.green,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit slack go channel surface link',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.red),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'slackers go',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing: const Icon(Icons.computer, color: Colors.green),
              onTap: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(snackBarGoodbye);
                // Navigator.pop(context);
                Navigator.of(context).pop();
                // Navigator.popAndPushNamed(context, "/new_page");
                // Navigator.popAndPushNamed(context, _launchPlayGolangHelloCode() as String);
                // https://www.gopherguides.com/
                _launchGithubGo();
                //   launch deep linking youtube.
              }),

          //
          ListTile(
              // leading:
              // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
              leading: const Icon(
                Icons.face,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'firebase chat',
                style: TextStyle(color: Colors.greenAccent),
              ),
              subtitle: const Text(
                'experimental firebase hookup',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellowAccent),
              ),
              trailing: const Icon(
                Icons.mail,
                color: Colors.greenAccent,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GoSyncScrollbar1()));
                // MaterialPageRoute(builder: (context) => FirebaseBaby()));
              }),
          // list tile 4 visit devvest photo album
          ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: Colors.orangeAccent,
              ),
              title: const Text(
                'devfest photos view',
                style: TextStyle(color: Colors.orangeAccent),
              ),
              subtitle: const Text(
                'photo gallery',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blueAccent),
              ),
              trailing:
                  const Icon(Icons.camera_enhance, color: Colors.blueAccent),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoSyncScrollbar2()),
                  // MaterialPageRoute(builder: (context) => GridListDemo()),
                );
              }),
          ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'register: add name, email, ethAddress',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              subtitle: const Text(
                'eth, etc, btc, addresses',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.greenAccent),
              ),
              trailing: const Icon(Icons.person_add, color: Colors.greenAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GoSyncScrollbar2()));
                // builder: (context) => TextFormFieldDemo()));
              }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.send,
          //       color: Colors.redAccent,
          //     ),
          //     title: const Text(
          //       'show eth|etc addresss',
          //       style: TextStyle(color: Colors.purpleAccent),
          //     ),
          //     subtitle: const Text(
          //       'face to face QR codes',
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic, color: Colors.redAccent),
          //     ),
          //     trailing: const Icon(Icons.send, color: Colors.purpleAccent),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               // link to websites external if necessary
          //               builder: (context) => const EthSyncBarcodeScan()));
          //       // MaterialPageRoute(builder: (context) => QRMainScreen()));
          //     }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.add_a_photo,
          //       color: Colors.orangeAccent,
          //     ),
          //     title: const Text(
          //       'capture eth|etc addresss',
          //       style: TextStyle(color: Colors.orangeAccent),
          //     ),
          //     subtitle: const Text(
          //       'launch camera and take QR addresses',
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic, color: Colors.blueAccent),
          //     ),
          //     trailing:
          //         const Icon(Icons.camera_enhance, color: Colors.yellowAccent),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const EthSyncBarcodeScan()));
          //     }),
          // ListTile(
          //     leading: const Icon(Icons.launch, color: Colors.greenAccent),
          //     title: const Text(
          //       'Flutter.io website barcode scan',
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic, color: Colors.greenAccent),
          //     ),
          //     trailing: const Icon(Icons.launch, color: Colors.greenAccent),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const EthSyncBarcodeScan()));
          //     }),
          // const ListTile(
          //   leading: Icon(Icons.launch, color: Colors.purpleAccent),
          //   title: Text(
          //     'ethSync.xyz',
          //     style: TextStyle(
          //         fontStyle: FontStyle.italic, color: Colors.purpleAccent),
          //   ),
          //   trailing: Icon(Icons.bookmark, color: Colors.orangeAccent),
          //   onTap: EthSyncLaunchUrl.launchURLEthSync,
          // ),
          // ListTile(
          //     leading: const Icon(
          //       Icons.android,
          //       color: Colors.indigoAccent,
          //     ),
          //     title: const Text(
          //       '1st page --------',
          //       style: TextStyle(color: Colors.yellowAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const GoSyncScrollbar2()));
          //       // MaterialPageRoute(builder: (context) => FirstScreen()));
          //     }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.laptop_windows,
          //       color: Colors.pinkAccent,
          //     ),
          //     title: const Text(
          //       '2nd page ----------',
          //       style: TextStyle(color: Colors.tealAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const GoSyncScrollbar2()));
          //       // MaterialPageRoute(builder: (context) => SecondScreen()));
          //     }),

          // ListTile(
          //     leading: const Icon(
          //       Icons.laptop_windows,
          //       color: Colors.tealAccent,
          //     ),
          //     trailing: const Icon(
          //       Icons.sync_disabled,
          //       color: Colors.tealAccent,
          //     ),
          //     title: const Text(
          //       'snackbar page',
          //       style: TextStyle(color: Colors.tealAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const GoSyncScrollbar2()));
          //       // MaterialPageRoute(builder: (context) => SnackBarPage()));
          //     }),
          ListTile(
              leading: const Icon(
                Icons.accessibility,
                color: Colors.pinkAccent,
              ),
              trailing: const Icon(
                Icons.share,
                color: Colors.pinkAccent,
              ),
              title: const Text(
                'share this app',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoSyncScrollbar2()),
                  // MaterialPageRoute(builder: (context) => EthSyncShare()),
                );
              }),
          // ListTile(
          //     leading: const Icon(
          //       Icons.accessibility,
          //       color: Colors.pinkAccent,
          //     ),
          //     trailing: const Icon(
          //       Icons.share,
          //       color: Colors.pinkAccent,
          //     ),
          //     title: const Text(
          //       'try page for iamges',
          //       style: TextStyle(color: Colors.yellowAccent),
          //     ),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ImagePreview(
          //                 // assetFile: _kAsset0,
          //                 //  String imageUrsl, heroTag, title;
          //                 //  imageUrl = "www.yahoo.com",
          //                 //  heroTag = "heroTag1",
          //                 //  title = "1st expander",
          //                 )),
          //       );
          //     }),
          ListTile(
              leading: const Icon(
                Icons.accessibility,
                color: Colors.pinkAccent,
              ),
              trailing: const Icon(
                Icons.share,
                color: Colors.pinkAccent,
              ),
              title: const Text(
                'tok toasty',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoSyncScrollbar2(
                          // assetFile: _kAsset0,
                          //  String imageUrsl, heroTag, title;
                          //  imageUrl = "www.yahoo.com",
                          //  heroTag = "heroTag1",
                          //  title = "1st expander",
                          )),
                );
              }),
        ],
      ),
    );
  }
}

final Uri _urlPlayGolangHelloCode =
    Uri.parse('https://play.golang.com/p/IBY3bOlTbu9');

Future<void> _launchPlayGolangHelloCode() async {
  debugPrint("customer left app to go hello example at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolangHelloCode)) {
    throw Exception('Could not launch $_urlPlayGolangHelloCode');
  }
}

final Uri _urlPlayGolang = Uri.parse('https://go.dev/play');

Future<void> _launchPlayGolang() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolang)) {
    throw Exception('Could not launch $_urlPlayGolang');
  }
}

final Uri _urlGoDev = Uri.parse('https://go.dev');

Future<void> _launchGoDev() async {
  debugPrint("customer left app to go.dev at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoDev)) {
    throw Exception('Could not launch $_urlGoDev');
  }
}

// gopher guides
final Uri _urlGopherGuides = Uri.parse('https://www.gopherguides.com');

Future<void> _launchGopherGuides() async {
  debugPrint("customer left app to gopher guides  at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGopherGuides)) {
    throw Exception('Could not launch $_urlGopherGuides');
  }
}

// launch youtube
final Uri _urlYoutube = Uri.parse('https://www.youtube.com');

Future<void> _launchYouTube() async {
  debugPrint("customer left app to you tube at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlYoutube)) {
    throw Exception('Could not launch $_urlYoutube');
  }
}

// launch twitter golang
final Uri _urlTwitterGo = Uri.parse('https://twitter.com/golang');

Future<void> _launchTwitterGolang() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlTwitterGo)) {
    throw Exception('Could not launch $_urlTwitterGo');
  }
}

// https://github.com/golang/go
// launch twitter golang
final Uri _urlGithubGo = Uri.parse('https://github.com/golang/go');

Future<void> _launchGithubGo() async {
  debugPrint("customer left app to github go");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubGo)) {
    throw Exception('Could not launch $_urlGithubGo');
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text('Thanks for visiting goSync. Goodbye!',
      textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
  duration: Duration(seconds: 3),
);
