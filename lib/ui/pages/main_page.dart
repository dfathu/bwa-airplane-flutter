import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/pages/home_page.dart';
import 'package:bwa_airplane/ui/pages/transaction_page.dart';
// import 'package:bwa_airplane/ui/pages/transaction_page.dart';
import 'package:bwa_airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              right: defaultMargin, left: defaultRadius, bottom: 30),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icons/icon_home.png',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icons/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/icons/icon_card.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/icons/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [buildContent(currentIndex), customBottomNavigation()],
            ),
          ),
        );
      },
    );
  }
}
