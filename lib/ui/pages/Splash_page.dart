import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Text(
                'Splash Page',
                style: blackTextStyle,
              ),
            ],
          )),
    );
  }
}
