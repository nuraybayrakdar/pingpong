import 'package:pingpong/models/player.dart';

class Competition {
  String profile_photo1;
  String profile_photo2;
  Player player_1;
  Player player_2;
  String time;

  Competition({
    required this.profile_photo1,
    required this.profile_photo2,
    required this.player_1,
    required this.player_2,
    required this.time,
  });
}
