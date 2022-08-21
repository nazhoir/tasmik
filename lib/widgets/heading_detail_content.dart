import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingDetailContent extends StatelessWidget {
  const HeadingDetailContent(
      {Key? key, required this.level, required this.title})
      : super(key: key);
  final String level;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 290,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "images/icon1.png",
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                level,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Color.fromRGBO(77, 121, 136, 1),
                  ),
                ),
              ),
            ],
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28,
                color: Color.fromRGBO(17, 58, 77, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
