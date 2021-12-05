import 'dart:async';

import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => {Navigator.pushNamed(context, '/get-started')});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/icon_plane.png'))),
                ),
                Text(
                  'AIRPLANE',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: medium, letterSpacing: 10.08),
                )
              ],
            ),
          )),
    );
  }
}
