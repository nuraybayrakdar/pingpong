import 'package:pingpong/data/player_data.dart';
import 'package:pingpong/models/competition.dart';

class CompetitionData {
  List<Competition> competitionList = [];

  CompetitionData() {
    PlayerData playerData = PlayerData();

    competitionList = [
      Competition(
        profile_photo1: 'assets/profilepic4.jpg',
        profile_photo2: 'assets/profilepic1.jpg',
        player_1: playerData.player_list[0],
        player_2: playerData.player_list[1],
        time: '14:00 PM',
      ),
      Competition(
        profile_photo1: 'assets/profilepic1.jpg',
        profile_photo2: 'assets/profilepic3.jpg',
        player_1: playerData.player_list[2],
        player_2: playerData.player_list[3],
        time: '15:30 PM',
      ),
      Competition(
        profile_photo1: 'assets/profilepic2.jpg',
        profile_photo2: 'assets/profilepic4.jpg',
        player_1: playerData.player_list[1],
        player_2: playerData.player_list[4],
        time: '10:30 PM',
      ),
      Competition(
        profile_photo1: 'assets/profilepic1.jpg',
        profile_photo2: 'assets/profilepic3.jpg',
        player_1: playerData.player_list[3],
        player_2: playerData.player_list[0],
        time: '08:30 PM',
      ),
    ];
  }
}
