import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

// class HelpScreen extends StatelessWidget {
//   HelpScreen() {
//     Timer(Duration(seconds: 5), () {
//       if (!Get.isSnackbarOpen) {
//         Get.offNamed('/home');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.network(
//             'https://www.vhv.rs/dpng/d/427-4270068_gold-retro-decorative-frame-png-free-download-transparent.png',
//             fit: BoxFit.cover,
//           ),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'We show weather for you',
//                   style: Theme.of(context).textTheme.headline4,
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () => Get.offNamed('/home'),
//                   child: Text('Skip'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class HelpScreen extends StatelessWidget {
  HelpScreen() {
    Timer(Duration(seconds: 5), () {
      if (!Get.isSnackbarOpen) {
        Get.offNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://www.vhv.rs/dpng/d/427-4270068_gold-retro-decorative-frame-png-free-download-transparent.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'We show weather for you',
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Get.offNamed('/home'),
                  child: Text('Skip'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
