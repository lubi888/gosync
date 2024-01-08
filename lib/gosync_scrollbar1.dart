import 'package:flutter/material.dart';
// import 'package:async/async.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import './gosync_text.dart';
import './gosync_urllinks.dart';

class GoSyncScrollbar1 extends StatelessWidget {
  const GoSyncScrollbar1({super.key});
  // print(myLocale.toString() + ' on Scrollbar2');
  final String _kAsset2 = 'assets/images/go-download-website.png';
  final String _kAsset3 = 'assets/images/footer-gopher.jpg';
  final String _kAsset4 = 'assets/images/go-env.png';
  final String _kAsset5 = 'assets/images/go-3-folders.png';
  final String _kAsset6 = 'assets/images/go-hello.png';
  final String _kAsset7 = 'assets/images/go-build-install.png';
  final String _kAsset8 = 'assets/images/geth-web.png';
  final String _kAsset9 = 'assets/images/gethdl-os.png';
  final String _kAssets10 = 'assets/images/geth-install-help.png';
  // final String _kAssets11 = 'assets/images/geth-command-help.png';
  final String _kAssets12 = 'assets/images/go-help-1.png';
  final String _kAssets13 = 'assets/images/go-help-2.png';
  final String _kAssets14 = 'assets/images/go-build-run-local.png';
  final String _kAssets15 = 'assets/images/go-install-systemwide.png';
  final String _kAssets16 = 'assets/images/github-go-ethereum-list.png';
  final String _kAssets17 = 'assets/images/which-geth-list.png';
  final String _kAssets18 = 'assets/images/geth-help-1.png';
  final String _kAssets19 = 'assets/images/geth-help-2.png';
  final String _kAssets20 = 'assets/images/geth-help-3.png';
  final String _kAssets21 = 'assets/images/geth-help-4.png';
  final String _kAssets22 = 'assets/images/geth-help-5.png';
  final String _kAssets23 = 'assets/images/geth-help-6.png';
  final String _kAssets24 = 'assets/images/geth-syncmode-begin.png';
  final String _kAssets25 = 'assets/images/geth-blockchain-p2p.png';
  final String _kAssets26 = 'assets/images/ethsync-complete-closed.png';
  final String _kAssets27 = 'assets/images/blockchain-size.png';
  final String _kAsset32 = 'assets/images/_kAsset32.png';

  // final String url = 'https://media.giphy.com/media/1MH245qhEF5bG/giphy.gif';

  // final Uri _launchLightChainSync =
  //     Uri.parse('https://ethereum.org/en/developers/docs/nodes-and-clients/');

  // Future<void> _ethLightChainSync() async {
  //   if (!await launchUrl(_launchLightChainSync)) {
  //     throw "could not launch $_ethLightChainSync";
  //   }

  @override
  Widget build(BuildContext context) {
    debugPrint('scrollbar1 loaded install Golang');

    ScrollController scrollBarController = ScrollController();
    return Scrollbar(
      controller: scrollBarController,
      child: ListView(
        controller: scrollBarController,
        children: <Widget>[
          //header bar 'install goland'
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 300.0,
            height: 80.0,
            decoration: BoxDecoration(
              border: Border.all(
                // style: BorderStyle.none  ,
                width: 10.0,
                color: Colors.yellow,
              ),
              shape: BoxShape.rectangle,
              color: Colors.red.shade500,
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              ethInstallGolandHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                // color: Colors.blue[900],
                color: Colors.blue,
                // backgroundColor: Color.fromARGB(255, 207, 160, 17),
                backgroundColor: Colors.amber,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // standard padding
          const Padding(padding: EdgeInsets.all(8.0)),
          // flutter beads border banner
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              // boxShadow: BoxShadow.lerpList(1, b, t),
              border: Border.all(
                // style: BorderStyle.none  ,
                width: 10.0,
                color: Colors.green,
              ),
              color: Colors.amber,
              // borderRadius:
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const Text(
              "FlutterBeads",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34.0, color: Colors.red),
              // selectionColor: Colors.green,
            ),
          ),
          // generic padding
          const Padding(padding: EdgeInsets.all(8.0)),
          // Image.asset(
          //   _kAsset3,
          //   height: 200.0,
          //   width: 300.0,
          // ),
          // const Padding(padding: EdgeInsets.all(8.0)),

          //gopher image greeting. make clickable.
          // naturally 320 x 202
          Image.asset(
            _kAsset3,
            semanticLabel: 'gopher mascot',
            // fit: BoxFit.cover,
            height: 202.0,
            width: 320.0,
            alignment: Alignment.center,
          ),
          //
          SizedBox(
            width: 300,
            height: 200,
            // Inkwell
            child: InkWell(
              radius: 50,
              // display a snackbar on tap
              onTap: () {
                debugPrint('gopher image inkwell tapped');
                //launch golang.org || go.dev
                _launchGolangDLUrl();
                // ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('goodbye!'),
                    duration: Duration(milliseconds: 1500),
                  ),
                );
                //   (link) async {
                // if (!await launchUrl(Uri.parse(link.url))) {
                //   throw Exception('Could not launch ${link.url}');
                // }
                //   };},),)
                // _launchGolangDLUrl
              },
              // implement the image with Ink.image
              child: Ink.image(
                fit: BoxFit.cover,
                image: AssetImage(_kAsset3),
                // _kAsset3,
                // image: const NetworkImage(
                // 'https://www.kindacode.com/wp-content/uploads/2022/07/bottle.jpeg'),
              ),
            ),
          ),

          // txt to golang.org/dl download page
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text: ethInstallGolandGoGetWebsite,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.yellow,
              // backgroundColor: Colors.amber,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
          ),
          // gosynce tortek email contact
          Linkify(
            onOpen: (link) async {
              if (!await launchUrl(Uri.parse(link.url))) {
                throw Exception('Could not launch ${link.url}');
              }
            },
            text: gosyncEmailAdress,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.yellow,
              // backgroundColor: Colors.amber,
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
            ),
          ),
          //assed image gopher
          Image.asset(
            _kAsset2,
            height: 200.0,
            width: 300.0,
            // fit:
          ),
          // 2nd image dark colour.
          Image.asset(
            _kAsset32,
            height: 300.0,
            width: 450.0,
            // fit:
          ),
          Image.asset(
            _kAsset32,
            // height: 200.0,
            // width: 300.0,
            // fit:
          ),

          // convert this to ledgeable code with << >>
          const SelectableText(
            ethCheckGoEnv,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.green,
              backgroundColor: Colors.yellow,
              // fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          //Box Decoration
          //Example Code Widget Container
          Container(
            // padding: const EdgeInsets.all(8.0),
            // width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              shape: BoxShape.rectangle,
              color: Colors.red.shade500,
              // borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const Text(
              ethCheckGoEnv,
              // overflow: TextOverflow.clip,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          //example code widget code only
          //greenscreen border
          Container(
            padding: const EdgeInsets.all(8.0),
            // remove height aut config
            // width: 50.0,
            // height: 260.0,
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              border: Border.all(
                width: 10.0,
                color: Colors.green,
              ),
              shape: BoxShape.rectangle,
              // color: Colors.green.shade600,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const SelectableText(
              goHelloCode,
              textAlign: TextAlign.left,
              showCursor: true,
              autofocus: true,
              cursorColor: Colors.green,
              // selectionControls: ,
              // onTap: () =>,
              // on tap either open https://play.golang.com or copy to clipboard
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          //  2nd container code widget
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 50.0,
            height: 200.0,
            decoration: const BoxDecoration(
              // border: Border.all(
              //   width: 10.0,
              //   color: Colors.green,
              // ),
              // image: DecorationImage(image: AssetImage(_kAsset2)),
              shape: BoxShape.rectangle,
              // color: Colors.green,
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const SelectableText(
              goHelloCode,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.yellow,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),

          //txt container 1
          Container(
              padding: const EdgeInsets.all(15.0),
              width: 300.0,
              height: 650.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red.shade500,
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              ),
              child: Linkify(
                onOpen: (link) async {
                  if (!await launchUrl(Uri.parse(link.url))) {
                    throw Exception('Could not launch ${link.url}');
                  }
                },
                text: ethInstallGolangInstallInstructions,
                textAlign: TextAlign.left,
                linkStyle: const TextStyle(color: Colors.green),
                style: const TextStyle(
                  color: Colors.yellow,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                ),
              )),
          const Padding(padding: EdgeInsets.all(8.0)),
          //coloured, padded container
          Container(
            padding: const EdgeInsets.all(15.0),
            // width: 300.0,
            // height: 250.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              ethCheckGoHelp,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),
          // const Padding(padding: EdgeInsets.all(8.0)),
          //contiane with no size. automatic overflow?
          Container(
            padding: const EdgeInsets.all(8.0),
            // width: 300.0,
            // height: 250.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              ethCheckGoHelp,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),

          const SelectableText(
            // Padding(padding: EdgeInsets.all(8.0)) as String,
            ethCheckGoHelp,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.green,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          // const Padding(padding: EdgeInsets.all(8.0)),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: SelectableText(
              // Padding(padding: EdgeInsets.all(8.0)) as String,
              ethCheckGoHelp,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.yellow,
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
              ),
            ),
          ),

          //end text here.

          Column(
            children: [
              // const Padding(padding: EdgeInsets.all(30.0)),
              Image.asset(
                _kAssets12,
                // height: 200.0,
                // width: 300.0,
              ),
            ],
          ),

          Image.asset(
            _kAssets12,
            height: 800.0,
            width: 600.0,
            // height: max(0.0, 0.0),
          ),

          TextButton(
            onPressed: () {},
            child: Image.asset(
              _kAssets13,
              // height: 200.0,
              // width: 300.0,
            ),
          ),
          //txt command 'tytpe i the following code'
          // convert this to selectable, coloured code.
          const Text(
            ethCheckGoEnv,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const Text(
            ethCheckGoEnv,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.green,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Image.asset(
              _kAsset4,
              // height: 200.0,
              // width: 300.0,
            ),
          ),
          const SelectableText(
            ethCheckGoPath3Folders,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAsset5,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAsset5,
              //             title: "GOPATH: bin, pkg, src",
              //           )),
              // );
            },
          ),
          //heading Golang Test Installation -----------------------------------------------
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const SelectableText(
              ethGolangTestHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          const SelectableText(
            ethGoTestYourInstallation,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const SelectableText(
            goHelloCode,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAsset6,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              //   Navigator.push(fs
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => EthSyncExtendedImage(
              //               image: _kAsset6,
              //               title: "go\/src\/hello.go",
              //             )),
              //   );
            },
          ),
          //container-intl-linkify
          const SelectableText(
            ethGoBuild,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAsset7,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAsset7,
              //             title: "webpage: go build, go install",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets14,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets14,
              //             title: "go build local install",
              //           )),
              // );
            },
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGoInstall,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets15,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets15,
              //             title: "go install systemwide",
              //           )),
              // );
            },
          ),
          //heading Geth  --------------------------------------------
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const SelectableText(
              ethInstallGethHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGethWebsite,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGethWebsite3Implementations,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          Image.asset(
            _kAsset8,
            height: 200.0,
            width: 300.0,
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGethWebsiteInstall,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          Image.asset(
            _kAsset9,
            height: 120.0,
            width: 300.0,
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGethWebsiteInstallHelp,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          Image.asset(
            _kAssets10,
            height: 200.0,
            width: 300.0,
          ),
          const SelectableText(
            ethGethWebsiteManyImplementations,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGithubGoEthereumList,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets16,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets16,
              //             title: "\\src\\github.com\\ethereum\\go-ethereum",
              //           )),
              // );
            },
          ),
          const SelectableText(
            ethGethVersion,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const SelectableText(
            ethWhichGethList,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets17,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets17,
              //             title: "\'which geth\' list",
              //           )),
              // );
            },
          ),
          const SelectableText(
            ethGethHelp,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets18,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets18,
              //             title: "\'geth help\' 1",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets19,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets19,
              //             title: "\'geth help\' 2",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets20,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets20,
              //             title: "\'geth help\' 3",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets21,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets21,
              //             title: "\'geth help\' 4",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets22,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets22,
              //             title: "\'geth help\' 5",
              //           )),
              // );
            },
          ),
          TextButton(
            child: Image.asset(
              _kAssets23,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets23,
              //             title: "\'geth help\' 6",
              //           )),
              // );
            },
          ),
          //run geth - synchronise ethereum blockchain heading   -----------------------------------------------------
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 60.0,
            height: 90.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow.shade500,
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            ),
            child: const SelectableText(
              ethGethWebsite,
              // ethGethRunHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
            ),
          ),
          // Container(
          //   child: const SelectableText(
          //     ethGethCommandHelp,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Colors.red,
          //       fontStyle: FontStyle.italic,
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(link.url as Uri)) {
                await launchUrl(link.url as Uri);
              } else {
                throw 'Could not launch $link';
              }
            },
            // humanize: true,
            text: ethGethWebsite3Implementations,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const SelectableText(
            ethBlockchainMassDifferentiation,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const SelectableText(
            ethGethSyncmodeLightIntroduction,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          const Center(
            child: ElevatedButton(
                onPressed: _ethLightChainSync,
                child: Text('launch ether light chain sync')),
            // print that external link has been activated & client left.
            // print('scrollbar3 elevatedButton pressed');
          ),
          const SelectableText(
            ethGethSyncmodeLight,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets24,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets24,
              //             title: "geth --syncmode light --cache=2048",
              //           )),
              // );
            },
          ),
          const SelectableText(
            ethGethBlockchainSyncing,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets25,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets25,
              //             title: "geth bloackchain p2p syncing",
              //           )),
              // );
            },
          ),
          const SelectableText(
            ethGethSyncingCompletedDisconnected,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets26,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets26,
              //             title: "ethereum syncing completed, disconnected",
              //           )),
              // );
            },
          ),
          const SelectableText(
            ethGethBlockchainLocation,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          TextButton(
            child: Image.asset(
              _kAssets27,
              // height: 200.0,
              // width: 300.0,
            ),
            onPressed: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EthSyncExtendedImage(
              //             image: _kAssets27,
              //             title: "blockchain location and size",
              //           )),
              // );
            },
          ),
          // Container(
          //   width: 150.0,
          //   height: 200.0,
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: AssetImage(_kAssets27),
          //     ),
          //   ),
          // ),
          //new btn for go.dev main & dl page.
          // Container(
          //   child: const Center(
          //     child: ElevatedButton(
          //         onPressed: _launchGolangMainWebsite,
          //         child: Text('go.dev main website')),
          //   ),
          // ),
          // Container(
        ],
      ),
    );
  }
}

final Uri _uriGolangDL = Uri.https("go.dev", "dl");
final Uri _uriGolangMain = Uri.https("go.dev");
final Uri _launchLightChainSync =
    Uri.parse('https://ethereum.org/en/developers/docs/nodes-and-clients/');

Future<void> _launchGolangDL() async {
  print("customer left app to go.dev/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_uriGolangDL)) {
    throw "could not launch $_launchGolangDL";
  }
}

Future<void> _launchGolangMainWebsite() async {
  print("customer left app to go.dev at");
  print(TimeOfDay.now());
  if (!await launchUrl(_uriGolangMain)) {
    throw "could not luanch $_uriGolangMain";
  }
}

Future<void> _ethLightChainSync() async {
  print("customer left app to eth.dev at");
  print(TimeOfDay.now());
  if (!await launchUrl(_launchLightChainSync)) {
    throw "could not launch $_ethLightChainSync";
  }
}

// final Uri _url = Uri.parse('https://flutter.dev');
// new links 2024.01
final Uri _urlGolangDL = Uri.parse('https://go.dev/dl');
// final Uri _urlGolangDL = Uri.parse('https://www.golang.org/dl');
Future<void> _launchGolangDLUrl() async {
  debugPrint("customer left app to golang.org/dl at");
  print(TimeOfDay.now());
  if (!await launchUrl(_urlGolangDL)) {
    throw Exception('Could not launch $_urlGolangDL');
  }
}

// Future<void> _launchGolangDLUrl() async {
//   if (!await launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }
