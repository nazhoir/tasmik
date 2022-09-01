import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class BlogList extends StatelessWidget {
  const BlogList({Key? key, required this.items, required this.title})
      : super(key: key);

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      height: 770,
      // width: MediaQuery.of(context).size.width - 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 17),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: aksen2Color,
                    ),
                  ),
                ),
                Text(
                  "Selengkapnya",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: aksen2Color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: items,
          )
        ],
      ),
    );
  }
}
