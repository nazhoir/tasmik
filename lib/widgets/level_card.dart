import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/constant.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({
    Key? key,
    required this.level,
    required this.title,
    required this.destination,
  }) : super(key: key);

  final String level;
  final String title;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 22),
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "images/icon1-putih.png",
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
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Text(
                title,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
