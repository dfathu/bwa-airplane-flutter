import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  imageUrl: 'assets/icons/icon_home.png', isSelected: true),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [Text('Main Page'), customBottomNavigation()],
        ),
      ),
    );
  }
}
