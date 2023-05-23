import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ml_classifier/screens/home.dart';

import '../constants.dart/constants.dart';

class Records extends StatelessWidget {
  Records({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: secondBackgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                  width: w * 0.9,
                  height: h * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Total Affects',
                          style: GoogleFonts.roboto(
                              color: secondTextColor, fontSize: 16)),
                      Text('688,715,476',
                          style: GoogleFonts.roboto(
                              color: mainTextColor, fontSize: 30)),
                      Text('8.57%',
                          style: GoogleFonts.roboto(
                              color: greenButtonColor, fontSize: 18)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: secondBackgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                  width: w * 0.9,
                  height: h * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Total Deaths',
                          style: GoogleFonts.roboto(
                              color: secondTextColor, fontSize: 16)),
                      Text('6,877,230',
                          style: GoogleFonts.roboto(
                              color: mainTextColor, fontSize: 30)),
                      Text('1%',
                          style: GoogleFonts.roboto(
                              color: Colors.red, fontSize: 18)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: secondBackgroundColor,
                      borderRadius: BorderRadius.circular(20)),
                  width: w * 0.9,
                  height: h * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('X-Ray Scanner',
                          style: GoogleFonts.roboto(
                              color: mainTextColor, fontSize: 30)),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ButtonColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text('Next',
                                style: GoogleFonts.roboto(
                                    fontSize: 18, color: Colors.white)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
