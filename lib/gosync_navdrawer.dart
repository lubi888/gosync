import 'package:flutter/material.dart';
import 'package:gosync/gosync_text.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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

// String _kAsset0 = 'assets/images/devcon1.png';
String _kAsset1 = 'assets/images/golang_developers.png';

class GoSyncNavDrawer extends StatelessWidget {
  const GoSyncNavDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    // Scaffold.of(context).openDrawer();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage(_kAsset1),
              ),
            ),
            child: const Text(
              drawerHeader,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          // DrawerTheme(data: Colors.blue, child: child),
          // List Tile 1
          ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.redAccent,
              ),
              title: const Text(
                'add eth|etc address - acccount',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'personal firebase storage',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GoSyncScrollbar2()));
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(
                Icons.school,
                color: Colors.orangeAccent,
              ),
              title: const Text('begin learning ethSync',
                  style: TextStyle(color: Colors.orangeAccent)),
              subtitle: const Text(
                'proof of work||stake',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.blueAccent),
              ),
              trailing: const Icon(
                Icons.school,
                color: Colors.greenAccent,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GoSyncScrollbar2()));
                // context, MaterialPageRoute(builder: (context) => Pesto()));
                // context, MaterialPageRoute(builder: (context) => Pesto()));
              }),
          //  ListTile 3 visit Go Play
          ListTile(
              leading: const Icon(
                Icons.account_balance,
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
          // list tile 4     go play version 2
          ListTile(
              leading: const Icon(
                Icons.account_balance,
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
                _launchPlayGolang();
              }),
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
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolangHelloCode)) {
    throw Exception('Could not launch $_urlPlayGolangHelloCode');
  }
}

final Uri _urlPlayGolang = Uri.parse('https://go.dev/play/');

Future<void> _launchPlayGolang() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPlayGolang)) {
    throw Exception('Could not launch $_urlPlayGolang');
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text('Thanks for visiting goSync. Goodbye!',
      textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
  duration: Duration(seconds: 3),
);
