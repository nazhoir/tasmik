import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionTileCustom extends StatelessWidget {
  const ExpansionTileCustom({
    Key? key,
    required this.title,
    required this.content,
    this.initiallyExpanded,
  }) : super(key: key);

  final String title;
  final List<Widget> content;
  final bool? initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(17, 58, 77, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded ?? false,
        tilePadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        iconColor: Colors.white,
        textColor: Colors.white,
        collapsedIconColor: Colors.white,
        childrenPadding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 15),
        title: Text(
          title,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        children: content,
      ),
    );
  }
}

class ExpansionTileContent extends StatelessWidget {
  const ExpansionTileContent(
      {Key? key, required this.no, required this.title, this.onTap})
      : super(key: key);

  final String no;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              height: 37,
              width: 37,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(
                    "images/icon2.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  no,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 155,
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
            ),
          ],
        ),
      ),
    );
  }
}
