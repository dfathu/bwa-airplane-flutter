import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/image_destination1.png'),
              fit: BoxFit.cover)),
    );
  }

  Widget customShadow() {
    return Container(
      height: 214,
      margin: EdgeInsets.only(top: 236),
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), customShadow()],
      ),
    );
  }
}
