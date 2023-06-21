import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  final String data;

  const HeaderText({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
