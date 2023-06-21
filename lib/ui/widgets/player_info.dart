import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingpong/models/player.dart';

class PlayerInfo extends StatelessWidget {
  final Player player;
  final int rank;
  const PlayerInfo({
    Key? key,
    required this.player,
    required this.rank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage(player.profile_photo),
              radius: 50,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${player.name} ${player.surname}',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${player.wins} wins ,  ${player.losses} losses',
                style: GoogleFonts.montserrat(
                    fontSize: 12, color: const Color(0xFFA62EE2)),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF7E7FF),
            ),
            child: Center(
              child: Text(
                rank.toString(),
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.arrow_drop_up_outlined,
                color: Colors.green, size: 30),
          ),
        ],
      ),
    );
  }
}
