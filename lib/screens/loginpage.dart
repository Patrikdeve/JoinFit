import 'package:flutter/material.dart';
import 'package:fluttercocktail/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool onpressed = false;

  final formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        onpressed = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        onpressed = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            // Form is a parent of the textform field
            key: formkey,
            child: Column(
              children: [
                Image.asset("asset/images/PersonalTraining.png",
                    fit: BoxFit.cover),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "WelCome!!",
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Death',  this can be used to create an asset and add an element
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("$name",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          // We used here textform field rather text field as we can eaily validet
                          // it is used for multipurpose that filling the forms sign in button
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty!!";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty!!";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(onpressed ? 50 : 10),
                        child: InkWell(
                          splashColor: Colors.yellow,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: onpressed ? 50 : 140,
                            height: 50,
                            alignment: Alignment.center,
                            child: onpressed
                                ? Icon(
                                    Icons.done_rounded,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                    ),
                                  ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   child: Text(
                      //     "Login",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
