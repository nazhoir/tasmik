import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasmik/settings/settings_view.dart';

import '../app/awaliyah/awaliyah.dart';
import '../app/ula/ula.dart';
import '../app/ulya/ulya.dart';
import '../app/wustho/wustho.dart';
import '../widgets/appbar_custom.dart';
import '../widgets/content_detail.dart';
import '../widgets/level_card.dart';

import '../models/ibtidaiyyah_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final IbtidaiyyahModel ibtidaiyyah = ibtidaiyyahList[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(button: [
        AppbarButton(
            icon: CupertinoIcons.text_alignright,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            })
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
                const Heading(
                  subtitle: "Selamat Datang Kembali",
                  title: "Belajar Apalagi Hari ini?",
                ),

                //
                LevelCard(
                    level: ibtidaiyyah.level,
                    title: ibtidaiyyah.title,
                    destination: ContentDetail(
                      level: ibtidaiyyah.level,
                      title: ibtidaiyyah.title,
                      data: ibtidaiyyah.conten,
                    )),
                const LevelCard(
                  level: "Awwaliyah",
                  title: "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
                  destination: Awaliyah(),
                ),
                const LevelCard(
                  level: "Ula",
                  title: "Nun Mati & Tanwin, Mim Mati dan Hukum Mad",
                  destination: Ula(),
                ),
                const LevelCard(
                  level: "Wustho",
                  title: "Cara Baca, Alif Lam Ta'rif dan Idgham",
                  destination: Wustho(),
                ),
                const LevelCard(
                  level: "Ulya",
                  title: "Waqaf, Ibtida' dan Bacaan khusus didalam al-Qur'an",
                  destination: Ulya(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
