import 'package:flutter/material.dart';
import 'package:pingpong/ui/screens/best_competitons_screen.dart';
import 'package:pingpong/ui/screens/competitons_screen.dart';

Widget BuildContent(int selected_index) {
  switch (selected_index) {
    case 0:
      return const CompetitonsScreen();
    case 1:
      return const BestCompetitionsScreen();
    case 2:
      return Container(
        color: Colors.amber,
      );
    case 3:
      return Container(
        color: Colors.white,
      );
    default:
      return const CompetitonsScreen();
  }
}
