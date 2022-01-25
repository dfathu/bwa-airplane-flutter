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

  Widget content() {
    // ! NOTE EMBLEM
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          Container(
            width: 108,
            height: 24,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/icon_emblem.png'))),
          ),
          Container(
            margin: EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung Lake Ciliwung Lake Ciliwung Lake Ciliwung Lake Ciliwung Lake Ciliwung',
                      style: whiteTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Tangerang',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    )
                  ],
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.only(right: 2),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/icon_Star.png'))),
                    ),
                    Text(
                      '4.8',
                      style: whiteTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), customShadow(), content()],
      ),
    );
  }
}
