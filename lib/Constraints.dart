import 'package:flutter/material.dart';

// Colors that we use in our app
const PrimaryColor = Color(0xff6a1b9a);

const TextColor = Color(0xFF3C4046);
const BackgroundColor = Color(0xFFF9F8FD);
const SecondColor = Color(0xffd8045e);

const double kDefaultPadding = 20.0;
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff6a1b9a)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];