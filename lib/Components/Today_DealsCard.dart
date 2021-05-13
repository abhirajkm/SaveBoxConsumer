import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({
    Key key,
    this.name,
    this.image,
    this.details,
    this.newRs,
    this.oldRs,
    this.status
  }) : super(key: key);
  final String name,details,status,image;
  final int oldRs,newRs;
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.only(top: 2,left: 2,bottom: 1),
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  color: Colors.grey,
                ),
              ],
              // image: DecorationImage(
              //   image: AssetImage("assets/fridge.jpg"),)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left:20,top: 20),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(image),)
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:6,top: 3),
                      padding: EdgeInsets.only(left:10,top: 3),
                      //color: Colors.blue,
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white54

                      ),
                      child: Text("SaveBox",style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black
                          )
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80,top: 80,),
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.7)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Text('\₹$oldRs',style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10
                              ),
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.7

                          ),),
                          Text('\₹$newRs',style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),

                          ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90,left: 9),
                      child: SizedBox(height: 30,
                        width: 30,
                        child: ColorFiltered(colorFilter: ColorFilter.mode(Colors.grey[300], BlendMode.color),
                          child: Image.asset("assets/sv_font.png"),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 125,left: 10,right: 10),
                      child: Text(details,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13
                          ),

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 177,left: 10),
                      child: Row(

                        children: [
                          Icon(Icons.timer,size: 17,),
                          SizedBox(width: 3,),
                          Text(status, style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),

                          ),)
                        ],
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      )
    ],);
  }
}
