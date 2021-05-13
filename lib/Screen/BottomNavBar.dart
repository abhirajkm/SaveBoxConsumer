
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constraints.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                  icon:SvgPicture.asset('assets/svg_icons/home.svg', width: 30,
                  color: currentIndex == 0 ? PrimaryColor : Colors.black),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                  setBottomBarIndex(0);
                },
                splashColor: Colors.white,
              ),
              Text("Home",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: currentIndex == 0 ? PrimaryColor : BackgroundColor),
              )
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                  icon: SvgPicture.asset('assets/svg_icons/user.svg', width: 30,
                    color: currentIndex == 1 ? PrimaryColor : Colors.black),

                  onPressed: () {
                    setBottomBarIndex(1);
                  }),
              Text("My Account",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: currentIndex == 1 ? PrimaryColor : BackgroundColor),
              )
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                  icon:SvgPicture.asset('assets/svg_icons/shopper.svg',width: 30,
                    color: currentIndex == 2 ? PrimaryColor : Colors.black,),


                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>EcomorServ()));
                    setBottomBarIndex(2);
                  }),
              Text("My Orders",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: currentIndex == 2? PrimaryColor : BackgroundColor),
              )
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                  icon:SvgPicture.asset(
                       'assets/svg_icons/gift-box.svg', width: 30,
                    color: currentIndex == 3 ? PrimaryColor : Colors.black,),

                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                    setBottomBarIndex(3);
                  }),
              Text("Credits",style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: currentIndex == 3 ? PrimaryColor :BackgroundColor),
              )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

