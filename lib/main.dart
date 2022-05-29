import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/pages/categoryListPage.dart';
import 'package:orilla_fresca_app/pages/splash_page.dart';
import 'package:orilla_fresca_app/pages/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: CategoryListPage()/*SplashPage(
      duration: 3,
      goToPage: WelcomePage(),
    )*/,
  ));
}




