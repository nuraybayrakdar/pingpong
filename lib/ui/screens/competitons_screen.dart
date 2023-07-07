import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingpong/data/competition_data.dart';
import 'package:pingpong/ui/widgets/competition_card.dart';
import 'package:pingpong/ui/widgets/current_competiton_card.dart';
import 'package:pingpong/ui/widgets/custom_appbar.dart';
import 'package:pingpong/ui/widgets/header_text.dart';
import 'package:pingpong/utils/constants.dart';

class CompetitonsScreen extends StatefulWidget {
  const CompetitonsScreen({super.key});

  @override
  State<CompetitonsScreen> createState() => _CompetitonsScreenState();
}

class _CompetitonsScreenState extends State<CompetitonsScreen> {
  @override
  Widget build(BuildContext context) {
    CompetitionData competition_data = CompetitionData();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
        leading_icon: Icon(Icons.sort, color: Constants.text_color),
        action_icon: Icon(Icons.event_outlined, color: Constants.text_color),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HeaderText(data: "Upcoming\nCompetitions"),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    "Sep 19, 2020",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const CurrentCompetitonCard(
              profile_photo1: 'assets/profilepic2.jpg',
              profile_photo2: 'assets/profilepic3.jpg',
              name1: 'John',
              name2: 'Jane',
              time: '13:30 PM',
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: competition_data.competitionList.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500,
                  childAspectRatio: 3 / 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return CompetitonCard(
                  competition: competition_data.competitionList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
