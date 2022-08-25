import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasmik/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/level/ibtidaiyyah/ibtidaiyyah.dart';
import 'package:tasmik/models/ibtidaiyyah_model.dart';

import 'package:tasmik/widgets/appbar_custom.dart';
import 'package:tasmik/widgets/content_detail.dart';
import 'package:tasmik/widgets/level_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final IbtidaiyyahModel ibtidaiyyah = ibtidaiyyahModel[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(button: [
        AppbarButton(icon: CupertinoIcons.text_alignright, onTap: () {})
      ]),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 28),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Datang Kembali",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: aksen1Color,
                          ),
                        ),
                      ),
                      Text(
                        "Belajar Apalagi Hari ini?",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                LevelCard(
                  level: ibtidaiyyah.level,
                  title: ibtidaiyyah.title,
                  destination: ContentDetail(
                    level: ibtidaiyyah.level,
                    title: ibtidaiyyah.title,
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ContentMark(data: ibtidaiyyah.conten),
                    ),
                  ),
                ),
                LevelCard(
                  level: "Awwaliyah",
                  title: "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
                  destination: ContentDetail(
                    level: "Ibtidaiyyah",
                    title: "Ibtidaiyyah",
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const ContentMark(
                          data: "hhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                    ),
                  ),
                ),
                LevelCard(
                  level: "Ula",
                  title: "Nun Mati & Tanwin, Mim Mati dan Hukum Mad",
                  destination: ContentDetail(
                    level: "Ibtidaiyyah",
                    title: "Ibtidaiyyah",
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const ContentMark(
                          data: "hhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                    ),
                  ),
                ),
                LevelCard(
                  level: "Wustho",
                  title: "Cara Baca, Alif Lam Ta'rif dan Idgham",
                  destination: ContentDetail(
                    level: "Ibtidaiyyah",
                    title: "Ibtidaiyyah",
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const ContentMark(
                          data: "hhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                    ),
                  ),
                ),
                LevelCard(
                  level: "Ulya",
                  title: "Waqaf, Ibtida' dan Bacaan khusus didalam al-Qur'an",
                  destination: ContentDetail(
                    level: "Ibtidaiyyah",
                    title: "Ibtidaiyyah",
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const ContentMark(
                          data: "hhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
