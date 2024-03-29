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
              textAlign: TextAlign.start,
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
                'main go website',
                style: TextStyle(color: Colors.purpleAccent),
              ),
              subtitle: const Text(
                'visit go.dev',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(FontAwesomeIcons.google,
                  color: Colors.purpleAccent),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.of(context).pop();
                _launchGoDev();
              }),
          // ListTile(
          //     leading: const Icon(
          //       // Icons.account_balance,
          //       FontAwesomeIcons.golang,
          //       color: Colors.redAccent,
          //     ),
          //     title: Text(
          //       // 'add eth|etc address - acccount',
          //       // 'visit go playground',
          //       // visitGoPlayground,
          //       AppLocalizations.of(context)!.visitGoPlayground,
          //       style: const TextStyle(color: Colors.purpleAccent),
          //     ),
          //     subtitle: const Text(
          //       // 'https://play.golang.com/',
          //       'play.golang.com',
          //       // https://go.dev/play/
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic, color: Colors.redAccent),
          //     ),
          //     trailing: const Icon(Icons.add_alert, color: Colors.purpleAccent),
          //     onTap: () {
          //       Navigator.of(context).pop();
          //       _launchPlayGolangHelloCode();
          //     }),
          // list tile 3     go play version 2
          ListTile(
              leading: const Icon(
                // Icons.account_balance,
                FontAwesomeIcons.golang,
                color: Colors.teal,
              ),
              title: Text(
                AppLocalizations.of(context)!.visitGoDevPlay,
                style: const TextStyle(color: Colors.teal),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'go.dev/play',
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              ),
              trailing: const Icon(FontAwesomeIcons.googlePlay, color: Colors.orangeAccent),
              onTap: () {
                // Navigator.of(context).pop();
                _launchPlayGolang();
              }),
          // list tile 4b gopher guides.
          // paddings
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('======= Prewritten Info Guides ========',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.purpleAccent)),
          ),
          ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.teal,
              ),
              title: const Text(
                'visit gopher guides',
                style: TextStyle(color: Colors.teal),
              ),
              subtitle: const Text(
                'gopher guide tutorials',
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              ),
              trailing: const Icon(Icons.add_alert, color: Colors.teal),
              onTap: () {
                // Navigator.of(context).pop();
                _launchGopherGuides();
              }),
          // paddings
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('======= Socials ========',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.redAccent)),
          ),

          // list tile 5 deep link youtube
          ListTile(
              leading: const Icon(
                // Icons.tv,
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit YouTube @golang programming',
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.lightBlue),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep link to youtube from google',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing:
                  const Icon(FontAwesomeIcons.squareYoutube, color: Colors.red),
              onTap: () {
                // Navigator.of(context).pop();
                _launchYouTube();
              }),
          // list tile 5 deep link XTwitter
          ListTile(
              leading:
                  const Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue
                      // Icons.alternate_email_rounded,
                      // Icons.flutter_dash,
                      // color: Colors.lightBlue,
                      ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit X Twitter @golang go programming surface web and deep link',
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
                FontAwesomeIcons.xTwitter,
                color: Colors.lightBlue,
              ),
              onTap: () {
                // Navigator.of(context).pop();
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
                'help solve the latest issues on the current release by visit Github go with surface link to website or deep link to open github mobile app.',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.green),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'github.com/golang/go/issues',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
              trailing: const Icon(Icons.computer, color: Colors.green),
              onTap: () {
                // Navigator.of(context).pop();
                _launchGithubGo();
                //   launch deep linking youtube.
              }),

          ListTile(
              leading: const Icon(
                // Icons.desktop_windows,
                FontAwesomeIcons.slack,
                color: Colors.yellow,
              ),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit Slack the messaging app that brings your whole team together',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.red),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'see what Gophers is up to',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
              trailing:
                  const Icon(FontAwesomeIcons.slackHash, color: Colors.blue),
              onTap: () {
                // Navigator.of(context).pop();
                _launchSlackGo();
                //   launch deep linking youtube.
              }),
          ListTile(
              leading: const Icon(FontAwesomeIcons.stackOverflow,
                  color: Colors.orangeAccent),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit and help others on StackOverflow and StackExachange and find the latest questions being asked.',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep link to stackoverflow and stack exchange.',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
              ),
              trailing: const Icon(
                FontAwesomeIcons.stackExchange,
                color: Colors.grey,
              ),
              onTap: () {
                // Navigator.of(context).pop();
                _launchStackOverflow();
                //   launch deep linking youtube.
              }),
          ListTile(
              leading:
                  const Icon(FontAwesomeIcons.discord, color: Colors.yellow),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit Discord Gophers and see the latest questions being asked.',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.red),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'deep discord link.',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
              trailing: const Icon(
                FontAwesomeIcons.discord,
                color: Colors.red,
              ),
              onTap: () {
                // Navigator.of(context).pop();
                _launchDiscordGophers(); //   launch deep linking youtube.
              }),
          ListTile(
              leading: const Icon(Icons.chat, color: Colors.red),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit Forum for gophers',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'forum',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
              trailing: const Icon(
                Icons.chat_bubble_outlined,
                color: Colors.purple,
              ),
              onTap: () {
                // Navigator.of(context).pop();
                // _launchDiscordGophers();
                _launchGoForum();
                //   launch deep linking youtube.
              }),

          ListTile(
              leading: const Icon(Icons.speaker_notes, color: Colors.grey),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit IRC internet relay chat. you will need an IRC internet relay chat app to interact. preinstalled on all linux systems using hexchat.',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.red),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'IRC opens new app',
                // https://go.dev/play/
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.teal),
              ),
              trailing: const Icon(
                Icons.speaker_notes,
                color: Colors.orange,
              ),
              onTap: () {
                // Navigator.of(context).pop();
                _launchGoIRC();
                //   launch deep linking youtube.
              }),
          ListTile(
              leading: const Icon(FontAwesomeIcons.googleScholar,
                  color: Colors.blue),
              title: const Text(
                // 'add eth|etc address - acccount',
                'visit Gophercon and find out where the next yearly conference is taking place. ',
                // visitGoPlayground,
                // AppLocalizations.of(context)!.visitGoDevPlay,
                style: TextStyle(color: Colors.yellow),
              ),
              subtitle: const Text(
                // 'https://play.golang.com/',
                'gophercon happens once a year and [countdown clock here && add to calendar?]',
                // https://go.dev/play/
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.lightBlue),
              ),
              trailing: const Icon(
                FontAwesomeIcons.googlePlay,
                color: Colors.deepOrange,
              ),
              onTap: () {
                // Navigator.of(context).pop();
                _launchGophercon();
                //   launch deep linking youtube.
              }),

          const ListTile(
            // leading:
            // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
            leading: Icon(
              Icons.face,
              color: Colors.yellowAccent,
            ),
            title: Text(
              'firebase chat',
              style: TextStyle(color: Colors.greenAccent),
            ),
            subtitle: Text(
              'experimental firebase hookup',
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.yellowAccent),
            ),
            trailing: Icon(
              Icons.mail,
              color: Colors.greenAccent,
            ),
          ),
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => const GoSyncScrollbar1()));
          //   MaterialPageRoute(builder: (context) => FirebaseBaby()));
          // }),
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
                Icons.photo_album,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'general golang phot colage view',
                style: TextStyle(color: Colors.greenAccent),
              ),
              subtitle: const Text(
                'photo gallery montage from inception',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.redAccent),
              ),
              trailing: const Icon(Icons.ac_unit, color: Colors.orangeAccent),
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
          const Padding(padding: EdgeInsets.all(16.0)),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('======= Application ========',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.redAccent)),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('-----------------',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.greenAccent)),
            ),
          ),
          ListTile(
              leading: const Icon(
                Icons.accessibility,
                color: Colors.pinkAccent,
              ),
              title: const Text(
                'share this app',
                style: TextStyle(color: Colors.greenAccent),
              ),
              trailing: const Icon(
                Icons.share,
                color: Colors.yellowAccent,
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
                Icons.info_outline,
                color: Colors.greenAccent,
              ),
              title: const Text(
                'about this app',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              trailing: const Icon(
                Icons.help_center,
                color: Colors.orangeAccent,
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
final Uri _urlYoutube = Uri.parse('https://www.youtube.com/@golang');

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
// https://github.com/golang/go/issues
// launch twitter golang
final Uri _urlGithubGo = Uri.parse('https://github.com/golang/go/issues');

Future<void> _launchGithubGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubGo)) {
    throw Exception('Could not launch $_urlGithubGo');
  }
}

final Uri _urlSlackGo = Uri.parse('https://invite.slack.golangbridge.org/');

Future<void> _launchSlackGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlSlackGo)) {
    throw Exception('Could not launch $_urlSlackGo');
  }
}

final Uri _urlStackOverflow =
    Uri.parse('https://stackoverflow.com/questions/tagged/go?tab=Newest');

Future<void> _launchStackOverflow() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlStackOverflow)) {
    throw Exception('Could not launch $_urlStackOverflow');
  }
}

// gophercon
final Uri _urlGophercon = Uri.parse('https://www.gophercon.com/');

Future<void> _launchGophercon() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGophercon)) {
    throw Exception('Could not launch $_urlGophercon');
  }
}

// Discord
final Uri _urlDiscordGophers = Uri.parse('https://discord.gg/golang');

Future<void> _launchDiscordGophers() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDiscordGophers)) {
    throw Exception('Could not launch $_urlDiscordGophers');
  }
}

// Forum
final Uri _urlGoForum = Uri.parse('https://forum.golangbridge.org/');

Future<void> _launchGoForum() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoForum)) {
    throw Exception('Could not launch $_urlGoForum');
  }
}

// IRC
final Uri _urlGoIRC = Uri.parse('ircs:irc.libera.chat/go-nuts');

Future<void> _launchGoIRC() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoIRC)) {
    throw Exception('Could not launch $_urlGoIRC');
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text('Thanks for visiting goSync. Goodbye!',
      textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
  duration: Duration(seconds: 3),
);
