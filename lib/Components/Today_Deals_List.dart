import 'package:flutter/material.dart';

import 'Today_DealsCard.dart';

class TodayDealsList extends StatelessWidget {
  const TodayDealsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            DealsCard(name: "Fridge",
              details: "Whirlpool 190 L 3 Star \n Direct-Cool Single Door Refrigerator",
              status: "End at 11.00 pm",
              oldRs: 12000,
              newRs: 9000,
              image: "assets/fridge.jpg",


            ),
            SizedBox(width: 15,),
            DealsCard(name: "TV",
              details: "Sony 32-inch 720p \nsmart LED TV",
              status: "End at 11.00 pm",
              oldRs: 10000,
              newRs: 5000,
              image: "assets/SONY.jpg",


            ),
            SizedBox(width: 15,),
            DealsCard(name: "Fridge",
              details: "Whirlpool 190 L 3 Star \n Direct-Cool Single Door Refrigerator",
              status: "End at 11.00 pm",
              oldRs: 12000,
              newRs: 9000,
              image: "assets/fridge.jpg",


            ),
            SizedBox(width: 15,),
          ],
        ));
  }
}
