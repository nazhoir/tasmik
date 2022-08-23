import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/awaliyah/awaliyah.dart';
import 'package:tasmik/ibtidaiyyah/ibtidaiyyah.dart';
import 'package:tasmik/settings/settings_view.dart';
import 'package:tasmik/ula/ula.dart';
import 'package:tasmik/ulya/ulya.dart';
import 'package:tasmik/widgets/appbat_button.dart';
import 'package:tasmik/widgets/level_card.dart';
import 'package:tasmik/wustho/wustho.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(17, 58, 77, 1)),
        backgroundColor: Colors.white,
        title: Text(
          "Tasmik",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
              color: Color.fromRGBO(17, 58, 77, 1),
            ),
          ),
        ),
        actions: [
          AppbarButton(
            icon: const Icon(
              CupertinoIcons.text_alignright,
              size: 24,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 28),
                width: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang Kembali",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color.fromRGBO(77, 121, 136, 1),
                        ),
                      ),
                    ),
                    Text(
                      "Belajar Apalagi Hari ini?",
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
              ),
              LevelCard(
                level: "Ibtidaiyyah",
                title: "Pengertian Ilmu Tajwid dan Sejarah Perkembangannya",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ibtidaiyyah(),
                    ),
                  );
                },
              ),
              LevelCard(
                level: "Awwaliyah",
                title: "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Awaliyah(),
                    ),
                  );
                },
              ),
              LevelCard(
                level: "Ula",
                title: "Nun Mati & Tanwin, Mim Mati dan Hukum Mad",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ula(),
                    ),
                  );
                },
              ),
              LevelCard(
                level: "Wustho",
                title: "Cara Baca, Alif Lam Ta'rif dan Idgham",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Wustho(),
                    ),
                  );
                },
              ),
              LevelCard(
                level: "Ulya",
                title: "Waqaf, Ibtida' dan Bacaan khusus didalam al-Qur'an",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ulya(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
