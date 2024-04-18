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
// import './gosync_scrollbar1.dart';
import './gosync_scrollbar2.dart';

const String _kAsset1 = 'assets/images/golang_developers.png';

class GoSyncNavDrawer extends StatelessWidget {
  const GoSyncNavDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    debugPrint('navdrawer opened at [time]');
    print(TimeOfDay.now());
    // Scaffold.of(context).openDrawer();
    return Drawer(
        width: 400.0,
        // child: SafeArea(
        child: ListView(
            // child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(_kAsset1), fit: BoxFit.contain),
                ),
                child: Text(
                  // drawerHeader 'go designers,
                  AppLocalizations.of(context)!.drawerHeader,
                  // style: const TextStyle(color: Colors.purpleAccent),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.yellow,
                  ),
                ),
              ),
              ExpansionTile(
                title: const Text(
                  "go installation levels",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.yellow),
                ),
                // leading: Icon(Icons.person), //add icon
                leading: const Icon(
                  Icons.school,
                  // FontAwesomeIcons.googleScholar,
                  color: Colors.red,
                ),
                childrenPadding: const EdgeInsets.only(
                    left: 20), //children padding origianlly 60
                children: [
                  // Divider(color: Colors.grey.shade400, indent: 72.0, height: 1.0),
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.windows,
                        color: Colors.lightBlue,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'windows basic go install using gorretct directory structure && setting environment variables.',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.yellow),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'windows go install windows basic go install using gorretct directory structure && setting environment variables.golang',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      // isThreeLine: true,
                      trailing: const Icon(FontAwesomeIcons.windows,
                          color: Colors.lightGreen),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.apple,
                        color: Colors.grey,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'container Install & collaborative goup coding',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'docker & kubernetes container go production & github hookup ',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.apple,
                          color: Colors.blueGrey),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                  // list tile 5 deep link youtube
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.linux,
                        color: Colors.red,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'go pro. production professional environment',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'professional go production environment',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.linux,
                          color: Colors.blue),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                  // const Padding(
                  //   padding: EdgeInsets.all(16.0),
                  //   child: Text('==== Official Website ====',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(color: Colors.redAccent)),
                  // ),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "platform installation",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                leading: const Icon(
                  FontAwesomeIcons.computer,
                  color: Colors.green,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.windows,
                        color: Colors.lightBlue,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'windows platform golang',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'windows go install',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.windows,
                          color: Colors.lightGreen),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                  // list tile 5 deep link XTwitter
                  // list tile 5 deep link youtube
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.apple,
                        color: Colors.grey,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Apple iOS',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'apple programming',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.apple,
                          color: Colors.blueGrey),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                  // list tile 5 deep link youtube
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.linux,
                        color: Colors.red,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Linux golang install',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link linux',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.linux,
                          color: Colors.blue),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchYouTube();
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "go.dev",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.tealAccent),
                ),
                leading: const Icon(
                  FontAwesomeIcons.golang,
                  color: Colors.amber,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
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
                            fontStyle: FontStyle.italic,
                            color: Colors.redAccent),
                      ),
                      trailing: const Icon(FontAwesomeIcons.google,
                          color: Colors.blue),
                      onTap: () {
                        // Navigator.pop(context);
                        // Navigator.of(context).pop();
                        _launchGoDev();
                      }),
                  ListTile(
                      leading: const Icon(
                        // Icons.account_balance,
                        FontAwesomeIcons.golang,
                        color: Colors.teal,
                      ),
                      title: Text(
                        AppLocalizations.of(context)!.visitGoDevPlay,
                        style: const TextStyle(color: Colors.yellow),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'go.dev/play and run some samples',
                        style: TextStyle(
                            // fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      trailing: const Icon(FontAwesomeIcons.googlePlay,
                          color: Colors.orangeAccent),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchPlayGolang();
                      }),
                  ListTile(
                      leading: const Icon(
                        // Icons.account_balance,
                        FontAwesomeIcons.golang,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        "search for some packages",
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'pkg.go.dev',
                        style: TextStyle(
                            // fontStyle: FontStyle.italic,
                            color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.googleScholar,
                          color: Colors.redAccent),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchPkgGoDev();
                      }),
                  ListTile(
                      leading: const Icon(
                        // Icons.account_balance,
                        FontAwesomeIcons.golang,
                        color: Colors.pink,
                      ),
                      title: const Text(
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        'current up to date release notes',
                        style: TextStyle(color: Colors.green),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        // 'latest release notes from [date] release [num]',
                        'go is updated twice yearly with minor bug fixes about 1 month after a major release',
                        style: TextStyle(
                            // fontStyle: FontStyle.italic,
                            color: Colors.yellow),
                      ),
                      trailing: const Icon(FontAwesomeIcons.googleScholar,
                          color: Colors.blue),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchGoRelease();
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "written guides & books",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple),
                ),
                leading: const Icon(
                  Icons.read_more,
                  color: Colors.amber,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
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
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                      trailing: const Icon(Icons.add_alert, color: Colors.teal),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchGopherGuides();
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "socials",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
                leading: const Icon(
                  // FontAwesomeIcons.twitter,
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.blue,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
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
                      trailing: const Icon(FontAwesomeIcons.squareYoutube,
                          color: Colors.red),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchYouTube();
                      }),
                  // list tile 5 deep link XTwitter
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.twitter,
                          color: Colors.lightBlue
                          // Icons.alternate_email_rounded,
                          // Icons.flutter_dash,
                          // color: Colors.lightBlue,
                          ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit X Twitter @golang go programming surface web and deep link',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.orange),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link to X Twitter',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.red),
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
                  // list tile 5 deep link Mastodon
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.mastodon,
                          color: Colors.lightBlue),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Mastodon @golang hash tag',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'general hash tag for go programmers chatting',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.red),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.mastodon,
                        color: Colors.lightGreen,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchMastodonGo();
                        //   launch deep linking youtube.
                      }),
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.redditAlien,
                          color: Colors.orange
                          // Icons.alternate_email_rounded,
                          // Icons.flutter_dash,
                          // color: Colors.lightBlue,
                          ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Reddit community',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link to reddit/golang',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.reddit,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchSlackGo();
                        _launchRedditGolang();
                        //   launch deep linking youtube.
                      }),
                  ListTile(
                      leading: const Icon(
                        // Icons.tv,
                        FontAwesomeIcons.instagram,
                        color: Colors.purple,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Instagram @golang programming',
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.orange),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link to instagram',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.red),
                      ),
                      trailing: const Icon(FontAwesomeIcons.instagramSquare,
                          color: Colors.orange),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchYouTube();
                      }),

                  ListTile(
                      leading: const Icon(FontAwesomeIcons.wikipediaW,
                          color: Colors.blueGrey
                          // Icons.alternate_email_rounded,
                          // Icons.flutter_dash,
                          // color: Colors.lightBlue,
                          ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Wikpedia surface web and deep link',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link to Wikimedia',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.red),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.wikipediaW,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchWikpediaGo();
                        //   launch deep linking youtube.
                      }),
                  // paddings seperator
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.medium,
                          color: Colors.yellow
                          // Icons.alternate_email_rounded,
                          // Icons.flutter_dash,
                          // color: Colors.lightBlue,
                          ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Medium tag Golang',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep link to Medium',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.yellow),
                      ),
                      trailing: const Icon(
                        // ignore: deprecated_member_use
                        FontAwesomeIcons.mediumM,
                        color: Colors.purple,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchMediumTagGo();
                        //   launch deep linking youtube.
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "go help",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.yellow),
                ),
                leading: const Icon(
                  Icons.help_outline,
                  color: Colors.green,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 20), //children padding
                children: [
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.stackOverflow,
                          color: Colors.orangeAccent),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit StackOverflow and StackExachange and find the latest questions being asked.',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'link to stackoverflow.',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.grey),
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

                  // list tile 6 github deep link github
                  ListTile(
                      leading: const Icon(
                        // Icons.desktop_windows,
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Github and help solve the latest issues. Surface link to this website or deep link open github mobile app.',
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
                      trailing: const Icon(FontAwesomeIcons.microsoft,
                          color: Colors.blue),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchGithubGo();
                        //   launch deep linking youtube.
                      }),

                  ListTile(
                      leading: const Icon(
                        // Icons.desktop_windows,
                        FontAwesomeIcons.slack,
                        color: Colors.pink,
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
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      trailing: const Icon(FontAwesomeIcons.salesforce,
                          color: Colors.lightBlue),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchSlackGo();
                        //   launch deep linking youtube.
                      }),
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.discord,
                          color: Colors.yellow),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Discord Gophers and see the latest questions being asked.',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.orange),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep discord link.',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
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
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.purple,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchDiscordGophers();
                        _launchGoForum();
                        //   launch deep linking youtube.
                      }),
                  ListTile(
                      leading: const Icon(Icons.group, color: Colors.yellow),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Groups for godev and go-nuts gophers',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.red),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'golang group go-nuts',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.orange),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.blue,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchDiscordGophers();
                        _launchGroupGolangDev();
                        //   launch deep linking youtube.
                      }),

                  ListTile(
                      leading:
                          const Icon(Icons.speaker_notes, color: Colors.grey),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit IRC internet relay chat. you will need an IRC internet relay chat app to interact.',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.yellow),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'IRC opens new app',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.teal),
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
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "go AI",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
                leading: const Icon(
                  Icons.android,
                  color: Colors.amber,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.search,
                          color: Colors.yellow),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Copilot',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.orange),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'deep Bing and MS link.',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.microsoft,
                        color: Colors.red,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchGithubCopilot(); //   launch deep linking youtube.
                      }),
                  ListTile(
                      leading: const Icon(Icons.chat, color: Colors.red),
                      title: const Text(
                        // 'add eth|etc address - acccount',
                        'visit Gemini code assist',
                        // visitGoPlayground,
                        // AppLocalizations.of(context)!.visitGoDevPlay,
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        // 'https://play.golang.com/',
                        'gemini agents',
                        // https://go.dev/play/
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.green),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // _launchDiscordGophers();
                        _launchGeminiCodeAssist();
                        //   launch deep linking youtube.
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "go photos & screenshots",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                leading: const Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.amber,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
                  // ListTiles
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "go events",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.redAccent),
                ),
                leading: const Icon(
                  Icons.event_outlined,
                  // FontAwesomeIcons.google,
                  color: Colors.purple,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
                  ListTile(
                      leading: const Icon(FontAwesomeIcons.googlePlusG,
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
                            fontStyle: FontStyle.italic,
                            color: Colors.lightBlue),
                      ),
                      trailing: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        _launchGophercon();
                        //   launch deep linking youtube.
                      }),
                  ListTile(
                    // leading:
                    // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                    leading: const Icon(
                      FontAwesomeIcons.googleScholar,
                      color: Colors.yellowAccent,
                    ),
                    title: const Text(
                      'find your nearest GDG Google Developers Group',
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    subtitle: const Text(
                      'hookup with your nearest develper group and ask some questions and network for job opportunities',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.yellowAccent),
                    ),
                    trailing: const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.greenAccent,
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchGoGDG();
                      //   launch deep linking youtube.
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "hire go programmers",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                leading: const Icon(
                  Icons.emoji_people,
                  color: Colors.red,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 20), //children padding
                children: [
                  ListTile(
                    // leading:
                    // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                    leading: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      'visit LinkedIn for go programmers',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      'look at some programmer profiles',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.greenAccent),
                    ),
                    trailing: const Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.redAccent,
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchLinkedInGo();
                      //   launch deep linking youtube.
                    },
                  ),
                  ListTile(
                    // leading:
                    // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                    leading: const Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'visit Freelancers for go programmers',
                      style: TextStyle(color: Colors.orange),
                    ),
                    subtitle: const Text(
                      'hire some programmers',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.teal),
                    ),
                    trailing: const Icon(
                      // FontAwesomeIcons.linkedinIn,
                      Icons.work,
                      color: Colors.yellowAccent,
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchFreelancer();
                      //   launch deep linking youtube.
                    },
                  ),
                  ListTile(
                    // leading:
                    // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                    leading: const Icon(
                      Icons.person,
                      color: Colors.pink,
                    ),
                    title: const Text(
                      'visit Upwork for go programmers',
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: const Text(
                      'hire some programmers online',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.orange),
                    ),
                    trailing: const Icon(
                      // FontAwesomeIcons.linkedinIn,
                      Icons.work_off_sharp,
                      color: Colors.purple,
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchUpworkGolang();
                      //   launch deep linking youtube.
                    },
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("go servers",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.pink)),
                leading: const Icon(
                  Icons.cloud_outlined,
                  color: Colors.blue,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 20), //children padding
                children: [
                  ListTile(
                    // leading:
                    // CircleAvatar(radius: 14, backgroundColor: Colors.yellowAccent),
                    leading: const Icon(
                      FontAwesomeIcons.digitalOcean,
                      color: Colors.lightBlue,
                    ),
                    title: const Text(
                      'visit Digital Ocean',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    subtitle: const Text(
                      'look at some platform server setups',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.greenAccent),
                    ),
                    trailing: const Icon(
                      FontAwesomeIcons.digitalOcean,
                      color: Colors.redAccent,
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      _launchDigitalOceanGo();
                      //   launch deep linking youtube.
                    },
                  )
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "app info & settings",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.yellowAccent),
                ),
                leading: const Icon(
                  Icons.info_outline,
                  // FontAwesomeIcons.google,
                  color: Colors.deepOrangeAccent,
                ), //add icon
                childrenPadding:
                    const EdgeInsets.only(left: 30), //children padding
                children: [
                  ListTile(
                      leading: const Icon(
                        Icons.accessibility,
                        color: Colors.orange,
                      ),
                      title: const Text(
                        'bug report & make suggestions',
                        style: TextStyle(color: Colors.yellow),
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
                  ListTile(
                      leading: const Icon(
                        Icons.share,
                        color: Colors.pinkAccent,
                      ),
                      title: const Text(
                        'share this app',
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                      trailing: const Icon(
                        Icons.accessibility,
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
                              builder: (context) => const GoSyncScrollbar2()),
                        );
                      }),
                ],
              ),
              // generic expansion tile
              // ExpansionTile(
              //   title: const Text(
              //     "==== generic expansion tile ====",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   leading: const Icon(
              //     FontAwesomeIcons.google,
              //     color: Colors.amber,
              //   ), //add icon
              //   childrenPadding:
              //       const EdgeInsets.only(left: 30), //children padding
              //   children: [
              //     // ListTiles
              //   ],
              // ),
            ] //children
            ));
  }
}

const snackBarGoodbye = SnackBar(
  backgroundColor: Colors.green,
  content: Text('Thanks for visiting goSync. Goodbye!',
      textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0)),
  duration: Duration(seconds: 3),
);

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

// launch mastodon golang
final Uri _urlMastodonGo = Uri.parse('https://mastodon.social/tags/golang');

Future<void> _launchMastodonGo() async {
  debugPrint("customer left app to twitter at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMastodonGo)) {
    throw Exception('Could not launch $_urlMastodonGo');
  }
}

// launch github golang
final Uri _urlGithubGo = Uri.parse('https://github.com/golang/go/issues');

Future<void> _launchGithubGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubGo)) {
    throw Exception('Could not launch $_urlGithubGo');
  }
}

// slack messaging
final Uri _urlSlackGo = Uri.parse('https://invite.slack.golangbridge.org/');

Future<void> _launchSlackGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlSlackGo)) {
    throw Exception('Could not launch $_urlSlackGo');
  }
}

// stack overflow
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

// https://groups.google.com/g/golang-dev
final Uri _urlGroupGolangDev =
    Uri.parse('https://groups.google.com/g/golang-nuts');

Future<void> _launchGroupGolangDev() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGroupGolangDev)) {
    throw Exception('Could not launch $_urlGroupGolangDev');
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

// https://go.dev/doc/devel/release
final Uri _urlGoRelease = Uri.parse('https://go.dev/doc/devel/release');

Future<void> _launchGoRelease() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoRelease)) {
    throw Exception('Could not launch $_urlGoRelease');
  }
}

// GDG google developers group
final Uri _urlGoGDG = Uri.parse('https://developers.google.com/community/gdg/');

Future<void> _launchGoGDG() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGoGDG)) {
    throw Exception('Could not launch $_urlGoGDG');
  }
}

// _launchPkgGoDev
final Uri _urlPkgGoDev = Uri.parse('https://pkg.go.dev/');

Future<void> _launchPkgGoDev() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlPkgGoDev)) {
    throw Exception('Could not launch $_urlPkgGoDev');
  }
}

// _launchPkgGoDev
final Uri _urlRedditGolang = Uri.parse('https://reddit.com/r/golang/');

Future<void> _launchRedditGolang() async {
  debugPrint("customer left app to pkg.go.dev");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlRedditGolang)) {
    throw Exception('Could not launch $_urlRedditGolang');
  }
}

final Uri _urlWikpediaGo =
    Uri.parse('https://en.wikipedia.org/wiki/Go_(programming_language)');

Future<void> _launchWikpediaGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlWikpediaGo)) {
    throw Exception('Could not launch $_urlWikpediaGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlMediumTagGo = Uri.parse('https://medium.com/tag/golang');

Future<void> _launchMediumTagGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlMediumTagGo)) {
    throw Exception('Could not launch $_urlMediumTagGo');
  }
}

// https://medium.com/tag/golang
final Uri _urlLinkedInGo =
    Uri.parse('https://www.linkedin.com/jobs/golang-developer-jobs');

Future<void> _launchLinkedInGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlLinkedInGo)) {
    throw Exception('Could not launch $_urlLinkedInGo');
  }
}

// _launchDigitalOceanGo
// https://medium.com/tag/golang
final Uri _urlDigitalOceanGo = Uri.parse('https://www.digitalocean.com/');

Future<void> _launchDigitalOceanGo() async {
  debugPrint("customer left app to github go issues");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlDigitalOceanGo)) {
    throw Exception('Could not launch $_urlDigitalOceanGo');
  }
}

final Uri _urlFreelancer = Uri.parse('https://www.freelancer.com/');

Future<void> _launchFreelancer() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlFreelancer)) {
    throw Exception('Could not launch $_urlFreelancer');
  }
}

// https://www.upwork.com/hire/golang-developers/
final Uri _urlUpworkGolang =
    Uri.parse('https://www.upwork.com/hire/golang-developers/');

Future<void> _launchUpworkGolang() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlUpworkGolang)) {
    throw Exception('Could not launch $_urlUpworkGolang');
  }
}

// https://github.com/features/copilot/
final Uri _urlGithubCopilot = Uri.parse('https://github.com/features/copilot/');

Future<void> _launchGithubCopilot() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGithubCopilot)) {
    throw Exception('Could not launch $_urlGithubCopilot');
  }
}

// https://cloud.google.com/gemini/docs/codeassist/overview
final Uri _urlGeminiCodeAssist =
    Uri.parse('https://cloud.google.com/gemini/docs/codeassist/overview');

Future<void> _launchGeminiCodeAssist() async {
  debugPrint("customer left app to freelancer");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGeminiCodeAssist)) {
    throw Exception('Could not launch $_urlGeminiCodeAssist');
  }
}
