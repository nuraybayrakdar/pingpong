import 'package:flutter/material.dart';
import 'package:pingpong/data/player_data.dart';
import 'package:pingpong/ui/widgets/custom_appbar.dart';
import 'package:pingpong/ui/widgets/header_text.dart';
import 'package:pingpong/ui/widgets/leader_board.dart';
import 'package:pingpong/ui/widgets/player_info.dart';
import 'package:pingpong/utils/constants.dart';

class BestCompetitionsScreen extends StatefulWidget {
  const BestCompetitionsScreen({super.key});

  @override
  State<BestCompetitionsScreen> createState() => _BestCompetitionsScreenState();
}

class _BestCompetitionsScreenState extends State<BestCompetitionsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    PlayerData player_data = PlayerData();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(
        action_icon: Icon(Icons.search_outlined, color: Constants.text_color),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Constants.secondary_color,
              Constants.primary_color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 80),
              const HeaderText(data: "Best\nChampions"),
              LeaderBoard(),
              Container(
                height: height / 2.2,
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  shrinkWrap: true,
                  itemCount: player_data.player_list.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    childAspectRatio: 4 / 1,
                  ),
                  itemBuilder: (context, index) {
                    return PlayerInfo(
                      player: player_data.player_list[index],
                      rank: index + 4,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
