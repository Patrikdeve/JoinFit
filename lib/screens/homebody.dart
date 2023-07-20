import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercocktail/utils/musicclass.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';
import 'categories.dart';
// import 'package:fluttercocktail/screens/category.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<MyCategory> catego = [
    MyCategory(
      imageUrl: "asset/images/yogaexercise.jpg",
      name: "Yoga Exercies",
    ),
    MyCategory(
      imageUrl: "asset/images/back.jpg",
      name: "Back Exercies",
    ),
    MyCategory(
      imageUrl: "asset/images/cardio.jpg",
      name: "Cardio",
    ),
    MyCategory(
      imageUrl: "asset/images/squats.jpg",
      name: "Legs Exercies",
    ),
  ];
  final List<MyMusic> muse = [
    MyMusic(poster: "asset/images/Cardiomusic.jpg", musicfor: "Cardio"),
    MyMusic(poster: "asset/images/PhonkMusic.jpg", musicfor: "Hard Workout"),
    MyMusic(poster: "asset/images/MeditationMusic.jpg", musicfor: "Meditation"),
    MyMusic(poster: "asset/images/workoutMusic.jpg", musicfor: "Workout"),
  ];

  bool isPressed = false;
  final formkey = GlobalKey<FormState>();
  moveToDrawer(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        isPressed = true;
      });

      await Future.delayed(Duration(milliseconds: 800));
      await Navigator.pushNamed(context, MyRoutes.drawerRoute);
      setState(() {
        isPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      duration: Duration(milliseconds: 250),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("asset/images/thinking.jpg"),
        fit: BoxFit.cover,
      )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              reverse: true,
              child: Form(
                key: formkey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () => moveToDrawer(context),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 90),
                        ),
                        Text("Hey,",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 40,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            )),
                        Text("Pratik",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 40,
                              color: Colors.deepPurple,
                              letterSpacing: 1.5,
                            )),
                        SingleChildScrollView(
                          reverse: false,
                          child: InkWell(
                            child: SingleChildScrollView(
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(42.0),
                                    border: Border.all(
                                      width: 3.5,
                                      color: Colors.yellow.withOpacity(.7),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "asset/images/searchicono.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Center(
                child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color:
                            Color.fromARGB(96, 252, 248, 248).withOpacity(.2),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 8,
                          color: Color.fromARGB(99, 255, 255, 255),
                        )),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepPurple,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ),
                    )),
              ),
            ),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 22),
                          child: Row(
                            children: [
                              Text("Find , ",
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 30,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow,
                                  )),
                              Text("Your Workout",
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 30,
                                    letterSpacing: 1.5,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 9, 235, 39),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 90.0),
                                child: Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color: Color.fromRGBO(117, 116, 116, 0.471),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 18),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "  Search Workout",
                  hintStyle: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    letterSpacing: 1.0,
                    color: Color.fromARGB(176, 255, 255, 255),
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(176, 255, 255, 255),
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Popular",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  Text("Hard Workout",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  Text("Full Body",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  Text("Crossfit",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Row(
                children: [
                  Text("Polpular  ",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  Text("Workout",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      )),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                    itemCount: catego.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(catego[index].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.grey,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              catego[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: GoogleFonts.lato().fontFamily,
                              ),
                            )
                          ],
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Row(
                children: [
                  Text("Polpular  ",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  Text("Playlist",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 30,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 235, 39),
                      )),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                    itemCount: muse.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(muse[index].poster),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.grey,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              muse[index].musicfor,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: GoogleFonts.lato().fontFamily,
                              ),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    ));
  }
}
