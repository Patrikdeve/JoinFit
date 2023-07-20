import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercocktail/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({super.key});

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

bool ispressed = false;

class _DrawerBodyState extends State<DrawerBody> {
  final formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        ispressed = true;
      });

      await Future.delayed(Duration(milliseconds: 250));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        ispressed = false;
      });
    }
  }

  bool pressedlogout = false;
  bool pressedProfile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Form(
                          key: formkey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () => moveToHome(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110.0),
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            letterSpacing: 1,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                InkWell(
                  child: Container(
                    height: 120,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(45, 158, 158, 158),
                        borderRadius: BorderRadius.circular(25)),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 20),
                            child: Stack(children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/Cardiomusic.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(40)),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.pencil_circle,
                                      color: Colors.black,
                                      size: 25,
                                    )),
                              )
                            ]),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 28.0, bottom: 0),
                                child: TextButton(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Pratik Devakate",
                                        style: GoogleFonts.bebasNeue(
                                            color: Colors.white,
                                            fontSize: 30,
                                            letterSpacing: 1.2),
                                      ),
                                      Text(
                                        "View Profile",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.lato().fontFamily,
                                            fontSize: 14,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      pressedProfile = true;
                                    });

                                    await Future.delayed(
                                        Duration(milliseconds: 250));
                                    await Navigator.pushNamed(
                                        context, MyRoutes.profileRoute);
                                    setState(() {
                                      pressedProfile = false;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () async {
                    setState(() {
                      pressedProfile = true;
                    });

                    await Future.delayed(Duration(milliseconds: 250));
                    await Navigator.pushNamed(context, MyRoutes.profileRoute);
                    setState(() {
                      pressedProfile = false;
                    });
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(45, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: TextButton(
                          child: Column(
                            children: [
                              Text("Current Plan",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  )),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220.0),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(45, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: TextButton(
                          child: Column(
                            children: [
                              Text("Diet Plan",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  )),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250.0),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(45, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: TextButton(
                          child: Column(
                            children: [
                              Text("Enrolled Memberships",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  )),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 145.0),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(45, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: TextButton(
                          child: Column(
                            children: [
                              Text("Liked Playlist",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  )),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 215.0),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),

                //LogOut button
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: TextButton(
                              child: Column(
                                children: [
                                  Text("Logout",
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 1,
                                      )),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 260.0),
                          child: Icon(
                            CupertinoIcons.arrow_right_square,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () async {
                    setState(() {
                      pressedlogout = true;
                    });

                    await Future.delayed(Duration(milliseconds: 250));
                    await Navigator.pushNamed(context, MyRoutes.loginRoute);
                    setState(() {
                      pressedlogout = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
