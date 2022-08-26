import 'package:flutter/material.dart';
import 'package:tasmik/constant.dart';
import 'package:tasmik/widgets/content_detail.dart';

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
      child: Heading(
        titleSize: 20,
        cardIcon: true,
        level: level,
        title: title,
        cardTextColor: aksen2Color,
        margin: const EdgeInsets.only(top: 22),
        padding: const EdgeInsets.all(30),
        cardDecoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
      ),
    );
  }
}
