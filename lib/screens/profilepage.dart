import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercocktail/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  bool pressedBack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 60,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        setState(() {
                          pressedBack = true;
                        });

                        await Future.delayed(Duration(milliseconds: 250));
                        await Navigator.pushNamed(
                            context, MyRoutes.drawerRoute);
                        setState(() {
                          pressedBack = false;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110.0),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0),
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.sun_max,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(children: [
              Container(
                height: 260,
                width: 260,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("asset/images/Cardiomusic.jpg")),
                    borderRadius: BorderRadius.circular(130),
                    border: Border.all(
                      width: 5,
                      color: Colors.yellow,
                    )),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Icon(
                      CupertinoIcons.camera_circle,
                      color: Colors.black,
                      size: 60,
                    )),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Stack(),
                    Form(
                        child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(45, 158, 158, 158),
                              borderRadius: BorderRadius.circular(60)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30, right: 30, bottom: 12),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                hintText: "Full Name",
                                labelText: "Name",
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixIcon: Icon(Icons.person_outline_rounded),
                                fillColor: Colors.white,
                                prefixIconColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(45, 158, 158, 158),
                              borderRadius: BorderRadius.circular(60)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30, right: 30, bottom: 12),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                hintText: "Enter E-mail address",
                                labelText: "E-Mail",
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixIcon: Icon(Icons.mail),
                                fillColor: Colors.white,
                                prefixIconColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(45, 158, 158, 158),
                              borderRadius: BorderRadius.circular(60)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30, right: 30, bottom: 12),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                hintText: "Enter Contact No.",
                                labelText: "Contact No.",
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixIcon: Icon(Icons.call),
                                fillColor: Colors.white,
                                prefixIconColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
