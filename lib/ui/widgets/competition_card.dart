import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingpong/models/competition.dart';
import 'package:pingpong/utils/constants.dart';

class CompetitonCard extends StatelessWidget {
  final Competition competition;

  const CompetitonCard({
    Key? key,
    required this.competition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Constants.secondary_light_color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            height: height / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(competition.profile_photo1),
                          radius: 50,
                        ),
                      ),
                    ),
                    Text(
                      competition.player_1.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'vs',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color(0xFFA62EE2),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(competition.profile_photo2),
                          radius: 50,
                        ),
                      ),
                    ),
                    Text(
                      competition.player_2.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          width: 80,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xFFFFF4F4),
              width: 2,
            ),
          ),
          child: Text(
            competition.time,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
