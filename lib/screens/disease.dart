import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ml_classifier/screens/reords.dart';

import '../constants.dart/constants.dart';
import '../widgets/list_container.dart';

class Disease extends StatelessWidget {
  const Disease({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              'Identify of Disease',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 22),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListContainer(
            mainText: 'Fever',
            secondaryText:
                'For now, just stick to the basics, Moorcroft says. The coronavirus is spread through respiratory vapor, such as when someone sneezes or coughs into the air around you. Influenza viruses and common cold viruses are also spread this way',
            color: backgroundColor,
            imagePath: 'assets/sick.png',
          ),
          SizedBox(
            height: 20,
          ),
          ListContainer(
            mainText: 'Shortness of breath',
            secondaryText:
                'For now, just stick to the basics, Moorcroft says. The coronavirus is spread through respiratory vapor, such as when someone sneezes or coughs into the air around you. Influenza viruses and common cold viruses are also spread this way',
            color: secondBackgroundColor,
            imagePath: 'assets/nose.png',
          ),
          SizedBox(
            height: 20,
          ),
          ListContainer(
              mainText: 'Cough',
              secondaryText:
                  'For now, just stick to the basics, Moorcroft says. The coronavirus is spread through respiratory vapor, such as when someone sneezes or coughs into the air around you. Influenza viruses and common cold viruses are also spread this way',
              color: backgroundColor,
              imagePath: 'assets/cough.png'),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ButtonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text('Next',
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.white)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Records()));
                }),
          ),
        ],
      ),
    );
  }
}
