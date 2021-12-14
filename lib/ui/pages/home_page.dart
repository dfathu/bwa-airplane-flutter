import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        children: [
          Center(
            child: Column(
              children: [Text('Home Page')],
            ),
          )
        ],
      )),
    );
  }
}
