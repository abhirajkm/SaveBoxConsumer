import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../palatte.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          //[50].withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              //child: Icon(
                //icon,
                //color: Colors.white,
               // size: 20,
             // ),
            ),
            //hintStyle: kBodyText,
          ),
          obscureText: true,
          style: GoogleFonts.roboto(
              color: Colors.grey[850],
            fontSize: 18,
          ),
          textInputAction: inputAction,
        ),
      ),
    );
  }
}