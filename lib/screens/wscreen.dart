import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ml_classifier/screens/home.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0)),
          ),
          height: 250,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COVID-19',
                  style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 58,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'X-RAY TEST',
                  style: GoogleFonts.robotoMono(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            height: 350,
            child: Image.asset(
              'assets/banner3.png',
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 250,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: Text('Start The Test',
                  style: GoogleFonts.roboto(fontSize: 22, color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ),
      ]),
    );
  }
}
