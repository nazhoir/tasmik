import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class CardBlog extends StatelessWidget {
  const CardBlog({Key? key, this.category, required this.title})
      : super(key: key);

  final String? category;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 175,
            height: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: category != null
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                if (category != null)
                  Container(
                    // margin: const EdgeInsets.only(bottom: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      category.toString(),
                      style: TextStyle(color: aksen2Color),
                    ),
                  ),
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 85,
            child: AspectRatio(
              aspectRatio: 10 / 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  "images/materi/tauhid.jpg",
                  width: 1000.0,
                  height: 1000.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
