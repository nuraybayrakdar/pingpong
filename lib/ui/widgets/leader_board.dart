import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: buildLeaderboardItem(
                  height: 70,
                  name: 'Sarah',
                  image: const AssetImage("assets/profilepic3.jpg"),
                  score: 2,
                  color: const Color(0xA3A3A3A3)),
            ),
            buildLeaderboardItem(
              height: 100,
              name: 'Mike',
              image: const AssetImage("assets/profilepic1.jpg"),
              score: 1,
              color: const Color(0xFFF9A428),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: buildLeaderboardItem(
                height: 70,
                name: 'Jane',
                image: const AssetImage("assets/profilepic4.jpg"),
                score: 3,
                color: const Color(0xFFB28D62),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLeaderboardItem({
    required String name,
    required AssetImage image,
    required int score,
    required double height,
    required Color color,
  }) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                height: height,
                child: CircleAvatar(
                  backgroundImage: image,
                  radius: 50,
                ),
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
                child: Center(
                  child: Text(
                    '$score',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          name,
          style: GoogleFonts.montserrat(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
