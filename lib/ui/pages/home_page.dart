import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/destination_card.dart';
import 'package:bwa_airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                rating: 4.8,
                imageUrl: 'assets/images/image_destination1.png',
              ),
              DestinationCard(
                name: 'White House',
                city: 'Spain',
                rating: 4.7,
                imageUrl: 'assets/images/image_destination2.png',
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                rating: 4.8,
                imageUrl: 'assets/images/image_destination3.png',
              )
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Destination',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(
              name: 'Danau Berantan',
              city: 'Singaraja',
              imageUrl: 'assets/images/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/images/image_destination7.png',
              rating: 4.6,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/images/image_destination8.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestinations(), newDestination()],
    );
  }
}
