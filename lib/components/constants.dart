import 'package:binance_clone/components/size_config.dart';
import 'package:flutter/material.dart';

// Цветовая палитра
const primaryDarkColor = Color(0xFF0B0E11);
const primaryLightColor = Color(0xFF1E2329);
const secondaryDarkColor = Color(0xFFF0B90B);
const secondaryLightColor = Color(0xFFFCD535);
const textColor = Color(0xFF757575);

// Для анимаций
const kAnimationDuration = Duration(milliseconds: 200);

// Стиль заголовков
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Формы ошибок
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
