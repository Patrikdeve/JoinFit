import 'package:flutter/material.dart';

import 'homebody.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        HomeBody(),
      ]),
    );
  }
}
