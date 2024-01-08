// import 'package:flutter/material.dart';
// import './gosync_text.dart';
import 'dart:async';
// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:async/async.dart';
// import 'dart:html';

import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_web_browser/flutter_web_browser.dart';

final Uri _url = Uri.parse('https://flutter.dev');
// final Uri _urlEthereumOrgLightChain =
//     Uri.parse('https://ethereum.org/en/developers/docs/nodes-and-clients/');

// https://ethereum.org/en/developers/docs/nodes-and-clients/

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw "could not luanch $_url";
//   }
// }

class EthSyncLaunchUrl {
  static void launchURLFlutter() async {
    const url = "https://flutter.io";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchURLGithub() async {
    const url = "https://github.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchURLEthStackexchange() async {
    const url = "https://ethereum.stackexchange.com/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchURLEthYouTube() async {
    const url =
        "https://www.youtube.com/channel/UCNOfzGXD_C9YMYmnefmPH0g/featured";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // https://ethereum.stackexchange.com/

// void _launchURLX(String x_url) async {
//   const url= x_url;
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {//
//     throw "could not launch $url";
//   }
// }
  static launchURLEthSync() async {
    const url = 'https://www.ethsync.xxx';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchURLEthereum() async {
    const url = 'https://ethereum.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // static launchBrowserTabKrakenEthEur() async {
  //   await FlutterWebBrowser.openWebPage(
  //       // url: "https://flutter.io/", androidToolbarColor: Colors.red[900]);
  //       url: "https://trade.kraken.com/markets/kraken/eth/eur");
  //   // androidToolbarColor: Colors.red);
  // }

//  void _onLubiEthWeb() async {
//    const url = 'https://linuxubiuitous.com/ethsync';
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
//  }

  // void _shareEthSync() {
  //   final RenderBox box = context.findRenderObject();
  //   Share.share("www.et.eu",
  //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  // }

  // final String url_cry_malware = "https://coinpedia.org/news/firefox-upgrades-to-ban-crypto-mining-malware/";
  // visit golang.org/dl
  // class EthSyncUrl {
  static void launchURLGolangOrgDL() async {
    const url = "https://golang.org/dl";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURLGolangOrgInstall() async {
    const url = "https://golang.org/doc/install";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURLPocketGophers() async {
    const url = "https://pocketgophers.com/go-install-vs-go-build/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURLGethWeb() async {
    const url = "https://geth.ethereum.org";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURLGethWebDL() async {
    const url = "https://geth.ethereum.org/downloads/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURLGethWebInstall() async {
    const url = "https://geth.ethereum.org/install-and-build/Installing-Geth";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchURLEtherscanIoChartPrice() async {
    const url = "https://etherscan.io/chart/etherprice";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // https://geth.ethereum.org/downloads/
}
