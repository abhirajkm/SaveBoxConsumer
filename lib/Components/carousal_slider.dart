

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savebox_consumer_app/Models/carousal_Model.dart';

import '../Constraints.dart';

class CarousalSlide extends StatelessWidget {
  const CarousalSlide({
    Key key,
    this.card,}) : super(key: key);
  final Carousel card;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int _currentIndex = 0;


    return Container(
      child:  Stack(
        children: [

          Container(

            margin: EdgeInsets.only(top: size.height * 0.10),

            height: 100,
            width: 300,
            decoration: BoxDecoration(
              //color: Colors.purple,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
              ),
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xff8921aa),
                    const Color(0xffda4460),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),

          ),

          Container(
            height: 144,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              border: Border.all(width: 1,color:PrimaryColor.withOpacity(0.1) ),

              color: BackgroundColor,
              // image: DecorationImage(
              //     image: AssetImage("assets/bg.jpg")),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(24),
              //   topRight: Radius.circular(24),
              // ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 18),
                            height:30,
                            width: 40,
                            child: Image.asset("assets/sv_font.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 2,),
                          // Container(
                          //   //margin: EdgeInsets.only(left: 40),
                          //   height: 50,
                          //   width: 30,
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image:AssetImage("assets/sv_font.png"),
                          //           fit: BoxFit.cover)
                          //   ),
                          // ),
                          Text(card.title,style: GoogleFonts.itim(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: PrimaryColor,
                              fontWeight:FontWeight.bold
                            ),
                          )),
                          Text(card.subtitle,style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 10,
                                color: PrimaryColor,fontWeight:FontWeight.bold
                            ),
                          )),
                          SizedBox(height: 5,),
                          Text("₹23000",style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 10,
                                color: PrimaryColor,
                                decoration: TextDecoration.lineThrough,
                              decorationColor:SecondColor,
                              decorationThickness: 1.5,

                            ),
                          )),
                         // SizedBox(height: 2,),
                          Row(
                            children: [
                              Container(

                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  //color: Colors.purple,

                                  gradient: new LinearGradient(
                                      colors: [
                                        const Color(0xff8921aa),
                                        const Color(0xffda4460),
                                      ],
                                      begin: const FractionalOffset(0.0, 0.0),
                                      end: const FractionalOffset(1.0, 0.0),
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.clamp),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 2,),
                                      Text("BUDDING",style:GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: BackgroundColor
                                        ),
                                      )),
                                      Text("STARTS FROM",style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            color: BackgroundColor
                                        ),
                                      )),
                                    ],
                                  ),
                                ),

                              ),
                              SizedBox(width: 5,),

                              Text("₹1/-",style:GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    color: PrimaryColor,
                                  fontWeight: FontWeight.bold
                                ),
                              ))
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: 15),
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage("assets/fridge.jpg"),
                                fit: BoxFit.cover)
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 30,),


        ],
      ),
    );
  }
}

class CarouselList extends StatefulWidget {
  @override
  _CarouselListState createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  // List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Slide.map(
            (card) {
          var index = Slide.indexOf(card);
          return Container(
            width: currentPage == index ? 10 : 7.0,
            height: currentPage == index ? 10 : 7.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
              currentPage == index ? PrimaryColor : Color(0xFFA6AEBD),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 125),
      child: Column(
          children: <Widget>[
            Container(
              //color: Colors.yellow,
              height: 210,
              width: 500,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Opacity(
                    opacity: currentPage == index ? 1.0 : 0.8,
                    child: CarousalSlide(
                      card: Slide[index],
                    ),
                  );
                },
                itemCount: Slide.length,
                controller: PageController(
                  initialPage: 1,
                  viewportFraction: 0.959,
                keepPage: true),
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
            updateIndicators(),

          ],

      ),
    );
  }
}