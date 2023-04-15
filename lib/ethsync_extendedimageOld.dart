// import 'package:flutter/material.dart';
// import 'package:extended_image/extended_image.dart';

// class EthSyncExtendedImage extends StatelessWidget {
//   final String? image, title;
//   const EthSyncExtendedImage({super.key, this.image, required this.title});
//   // const GoSyncHome({super.key, required this.title});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red[900],
//         appBar: AppBar(
//           backgroundColor: Colors.red[900],
//           leading: IconButton(
//             icon: const Icon(Icons.close),
//             onPressed: Navigator.of(context).pop,
//           ),
//           title: Text(
//             title!,
//             style: const TextStyle(
//               color: Colors.yellow,
//               inherit: true,
//               fontWeight: FontWeight.w300,
//               fontStyle: FontStyle.italic,
//               letterSpacing: 2.0, //1.2
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: SizedBox.expand(
//           //expand
//           // child: Hero(
//           // tag: heroTag,
//           child: ExtendedImageSlidePage(
//             slideAxis: SlideAxis.both,
//             //slideType: SlideType.onlyImage,
//             onSlidingPage: Navigator.of(context).pop, //change state.
//             child: ExtendedImage(
//               enableSlideOutPage: true,
//               mode: ExtendedImageMode.gesture,
//               initGestureConfigHandler: (state) => GestureConfig(
//                 minScale: 1.0,
//                 animationMinScale: 0.8,
//                 maxScale: 3.0,
//                 animationMaxScale: 3.5,
//                 speed: 1.0,
//                 inertialSpeed: 100.0,
//                 initialScale: 1.0,
//                 inPageView: false,
//               ),
//               // onDoubleTap: ?   zoom in on image
//               // onDoubleTap: Scale: 2.0,
//               onDoubleTap: printFunc(),
//               fit: BoxFit.contain,
//               image: AssetImage(
//                 image!,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// printFunc() {
//   print('hello extended images');
// }
