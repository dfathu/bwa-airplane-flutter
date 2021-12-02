import 'package:bwa_airplane/ui/pages/get_started_pages.dart';
import 'package:flutter/material.dart';

// import 'ui/pages/Splash_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
      // SplashPage(),
    );
  }
}
