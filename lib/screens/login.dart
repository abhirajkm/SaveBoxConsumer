import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savebox_consumer_app/palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:savebox_consumer_app/widgets/widget.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  // //Container(
                  //   height: 217,
                  //   //width: 300,
                  //   child: Center(
                  //
                  //     //child: Text(
                  //      // 'save box',
                  //      // style: kHeading,
                  //     ),
                  //   ),
                  // //),
                  SizedBox(
                    height: 430,

                   ),

                  Container(

                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
                      color: Colors.purple[800],
                   ),

                  //  color: Colors.purple[800],
                    padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 2),

                    child: Column(
                      children: [

                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [


                            SizedBox(
                              height: 25,
                            ),


                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(

                                'Login to SaveBox',
                               //textAlign: TextAlign.left,
                                style: GoogleFonts.roboto(
                                  //textStyle: Theme.of(context).textTheme.headline4,
                                  fontSize: 25,
                                    color: Colors.white



                                  //fontWeight: FontWeight.w700,
                                  //fontStyle: FontStyle.italic,
                                )


                              ),
                            ),


                            //),



                            TextInput(


    //icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email Address',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,



                          ),


                            PasswordInput(
                              //icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, "/forgot-password");
                                  },
                                  child:  Text("Forgot Password ?",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.right),
                                )
                              ],
                            ),
                            //Text(
                             // 'Forgot Password?',
                             // style: kBodyText,

                            //),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.only(left: 80),
                              //decoration: BoxDecoration(
                                  //border: Border(
                                  // bottom:
                                  //  BorderSide(color: Colors.white, width: 1),
                                  //)),
                              child: Row(
                                children: [
                                  Text("Not a member yet?",style: GoogleFonts.roboto(
                                      color: Colors.white
                                    //style: TextStyle(fontSize: 15,fontFamily:'Opensas',
                                       // color:Colors.white
                                  ), ),
                                  Text(" SignUp",style: GoogleFonts.roboto(
                                      color: Colors.white,fontWeight: FontWeight.bold
                                    //style: TextStyle(color: Colors.white,
                                      //fontSize: 15,fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                                    SizedBox(
                                    height: 30,
                                    ),
                                     ],
                                )
                          ],
                        ),


                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}