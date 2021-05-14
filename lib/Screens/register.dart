


import 'package:flutter/material.dart';
import 'package:savebox_consumer_app/Screens/style.dart';
class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool _checkBoxValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 4 + 30,
              width: MediaQuery.of(context).size.width,
              child: Container(

                child: Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    Image.asset(
                      'assets/savebox.png',
                      fit: BoxFit.contain,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(.01),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height /3.8,
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,







                child: Container(
                  height: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple[800],
                        blurRadius: .2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),





                  child: Padding(
                    padding: const EdgeInsets.only(top:20,left: 8,right: 8),
                    child: Column(






                      crossAxisAlignment: CrossAxisAlignment.start,



                      children: <Widget>[

                        SizedBox(
                          height: 30,

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Register Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w400 ,
                              color: Colors.white,
                              fontSize: 22,

                            ),
                          ),
                        ),


                        SizedBox(height: 10.0),


                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecorationStyle,

                          height: 35.0,
                          child: TextField(

                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 14),

                              hintText: '  Name',
                              hintStyle: HintTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecorationStyle,
                          height: 35.0,
                          child: TextField(

                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 14),

                              hintText: '  Email Address',
                              hintStyle: HintTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecorationStyle,
                          height: 35.0,
                          child: TextField(

                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 14),

                              hintText: '  Contact Number',
                              hintStyle: HintTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecorationStyle,
                          height: 35.0,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 14),

                              hintText: '  Password',
                              hintStyle: HintTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                          alignment: Alignment.centerRight,
                          decoration: BoxDecorationStyle,
                          height: 35.0,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 14),

                              hintText: '  Confirm Password',
                              hintStyle: HintTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          child: Stack(
                            children: [

                              Container(
                                padding: EdgeInsets.only(bottom: .6,left: 36,top: 5),
                                height: MediaQuery.of(context).size.height * .03,


                                child: Row(




                                  children: [
                                    Theme(data: ThemeData(unselectedWidgetColor: Colors.white),

                                      child: Checkbox(
                                          focusColor: Colors.white,

                                          checkColor: Colors.black,
                                          activeColor: Colors.white,
                                          value: _checkBoxValue,
                                          onChanged: (bool value){
                                            setState(() {
                                              _checkBoxValue=value;
                                            });

                                          }),),
                                    Text("By Clicking on Submit you agree to our",
                                      style: TextStyle(fontSize: 10.5,fontFamily:'Opensas',
                                          color:Colors.white),),

                                  ],
                                ),

                              ),

                            ],
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(left:120,bottom: 05),
                          width: double.infinity,
                          child: Text("Terms & Privacy Policy",
                            style:TextStyle
                              (color:Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Opensas',
                                fontSize: 12),),
                        ),

                        Container(
                          padding: EdgeInsets.only(bottom: 2,left: 8,right: 8),
                          width: double.infinity,
                          child: RaisedButton(

                            onPressed: () => print('SignUp Button Pressed'),
                            padding: EdgeInsets.all(10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.deepOrange,
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ),

                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.only(left: 50),
                          child: Row(

                            children: [
                              Text("Already have an account?",
                                style: TextStyle(fontSize: 15,fontFamily:'Opensas',
                                    color:Colors.white),),
                              Text("Login",style: TextStyle(color: Colors.white,
                                  fontSize: 15,fontWeight: FontWeight.bold),)

                            ],

                          ),

                        )










                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



