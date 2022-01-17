import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final double rating;
  final String imageUrl;

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      this.rating = 0.0,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(image: AssetImage(imageUrl))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/icon_Star.png'))),
                      ),
                      Text(
                        rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: semiBold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
