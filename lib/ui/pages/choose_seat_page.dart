import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget status() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //NOTE: AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_available.png'))),
            ),
            Text('Available', style: blackTextStyle),
            //NOTE: SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_selected.png'))),
            ),
            Text('Selected', style: blackTextStyle),
            //NOTE: Unavailable
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_unavailable.png'))),
            ),
            Text('Unavailable', style: blackTextStyle),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [title(), status()],
        ),
      ),
    );
  }
}
