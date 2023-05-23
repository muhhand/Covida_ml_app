import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ml_classifier/constants.dart/constants.dart';

class Result extends StatelessWidget {
  const Result(
      {key,
      required this.image,
      required this.result,
      required this.confidence});

  final File image;
  final String result;
  final String confidence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: mainTextColor,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Image.file(image),
              ),
              // Text(result,
              //     style:
              //         GoogleFonts.roboto(fontSize: 18, color: mainTextColor)),
              SizedBox(
                height: 50,
              ),
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
                    child: Text(result,
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Colors.white)),
                    onPressed: () {}),
              ),
              SizedBox(
                height: 10,
              ),
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
                    child: Text(confidence,
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Colors.white)),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
