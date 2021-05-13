
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox_consumer_app/Components/Today_DealsCard.dart';
import 'package:savebox_consumer_app/Components/Today_Deals_List.dart';
import 'package:savebox_consumer_app/Components/carousal_slider.dart';
import 'package:savebox_consumer_app/Models/Today_Deals.dart';

import 'package:savebox_consumer_app/Navbar_components/Home_Navbar.dart';


import '../Constraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex= 0;
  List mypage=[HomeNavBar(),HomeNavBar(),HomeNavBar(),HomeNavBar()];
  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return  Scaffold(
      //backgroundColor: Color(0xff8921aa),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: Image.asset("assets/sbbg.jpg",
                          fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset("assets/sbbg.jpg",
                          fit: BoxFit.cover,),
                      ),
                    ],
                  ),

                Container(

                    margin: EdgeInsets.only(top: size.height * 0.30),
                    padding: EdgeInsets.only(top: size.height*0.20,left: size.width*0.06),
                    // padding: EdgeInsets.only(
                    //   top: size.height * 0.12,
                    //   left:20,
                    //   right: 20,
                    // ),
                    //height: size.height*0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           SvgPicture.asset("assets/svg_icons/circle.svg", width: 15,color: Colors.green,),
                           SizedBox(width: 4,),
                           Text("Today's Deals",style: GoogleFonts.roboto(
                               textStyle: TextStyle(
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold
                               )
                           ),),

                         ],
                       ),
                       TodayDealsList(),
                     ],
                   ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90,left: 30),
                    child: CarouselList(),
                  ),

                ],
              ),
            ),

           // mypage[_currentIndex]
            //_widgetOptions.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

          onTap: _onItemTap,
          currentIndex: _currentIndex,
          selectedItemColor: PrimaryColor,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon:SvgPicture.asset("assets/svg_icons/home.svg", color: Colors.black, width: 20),
                label: "home",
                    ),
            BottomNavigationBarItem(
                icon:SvgPicture.asset("assets/svg_icons/user.svg", color: Colors.black, width: 20),
                label: "Account"
            ),
            BottomNavigationBarItem(
                icon:SvgPicture.asset("assets/svg_icons/shopper.svg", width: 25),
                label: "My Orders"
            ),
            BottomNavigationBarItem(icon:SvgPicture.asset(
                "assets/svg_icons/gift-box.svg", color: Colors.black, width: 25),
                label: "Credits"
            ),
          ])

    );
  }
}




