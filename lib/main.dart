import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/ui/pages/Splash_pages.dart';
import 'package:bwa_airplane/ui/pages/bonus_page.dart';
import 'package:bwa_airplane/ui/pages/get_started_pages.dart';
import 'package:bwa_airplane/ui/pages/main_page.dart';
import 'package:bwa_airplane/ui/pages/setting_page.dart';
import 'package:bwa_airplane/ui/pages/sign_in_pages.dart';
import 'package:bwa_airplane/ui/pages/sign_up_pages.dart';
import 'package:bwa_airplane/ui/pages/transaction_page.dart';
import 'package:bwa_airplane/ui/pages/wallet_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'ui/pages/Splash_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => AuthCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/transaction': (context) => TransactionPage(),
          '/wallet': (context) => WalletPage(),
          '/setting': (context) => SettingPage()
        },
      ),
    );
  }
}
