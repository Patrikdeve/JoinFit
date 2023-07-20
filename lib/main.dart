import 'package:flutter/material.dart';
import 'package:fluttercocktail/screens/drawer.dart';
import 'package:fluttercocktail/screens/homepage.dart';
import 'package:fluttercocktail/screens/loginpage.dart';
import 'package:fluttercocktail/screens/profilepage.dart';
import 'package:fluttercocktail/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.loginRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.drawerRoute: (context) => DrawerBody(),
          MyRoutes.profileRoute: (context) => ProfileBody(),
        });
  }
}
