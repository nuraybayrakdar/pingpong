import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingpong/utils/constants.dart';

class CurrentCompetitonCard extends StatelessWidget {
  final String profile_photo1;
  final String profile_photo2;
  final String name1;
  final String name2;
  final String time;

  const CurrentCompetitonCard({
    super.key,
    required this.profile_photo1,
    required this.profile_photo2,
    required this.name1,
    required this.name2,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 3.3,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Constants.primary_color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profile_photo1),
                      radius: 50,
                    ),
                  ),
                  Text(
                    name1,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'vs',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Constants.primary_dark_color,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profile_photo2),
                      radius: 50,
                    ),
                  ),
                  Text(
                    name2,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
              height: 40,
              width: 80,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                time,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Constants.text_color,
                    fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}
