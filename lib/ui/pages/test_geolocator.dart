// import 'package:bwa_airplane/shared/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class TestGeolocator extends StatefulWidget {
//   TestGeolocator({Key? key}) : super(key: key);

//   @override
//   _TestGeolocatorState createState() => _TestGeolocatorState();
// }

// class _TestGeolocatorState extends State<TestGeolocator> {
//   var locationMessage = "";

//   void getCurrentLocation() {
//     // const position = await Geolocator().getCurrentPosition();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: SafeArea(
//           child: ListView(
//         children: [
//           Text(locationMessage),
//           Container(
//             child: TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                   backgroundColor: kPrimaryColor,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(defaultRadius))),
//               child: Text(
//                 'Get Location',
//                 style:
//                     whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
//               ),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
