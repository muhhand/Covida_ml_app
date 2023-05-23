import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart/constants.dart';

class ListContainer extends StatelessWidget {
  const ListContainer(
      {super.key,
      required this.mainText,
      required this.secondaryText,
      required this.imagePath,
      required this.color});

  final String mainText;
  final String secondaryText;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        mainText,
                        style: GoogleFonts.roboto(
                            color: mainTextColor, fontSize: 18),
                      ),
                      Text(
                        secondaryText,
                        style: GoogleFonts.roboto(
                            color: secondTextColor, fontSize: 13),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
