import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qiroah/awaliyah/awaliyah.dart';
import 'package:qiroah/ibtidaiyyah/ibtidaiyyah.dart';

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
          "Qiroah",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
              color: Color.fromRGBO(17, 58, 77, 1),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(
              CupertinoIcons.text_alignright,
              size: 24,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ibtidaiyyah(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 22),
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(17, 58, 77, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Column(
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
                              "Ibtidaiyyah",
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
                        Text(
                          "Pengertian Ilmu Tajwid dan sejarah perkembangannya.",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Awaliyah(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 22),
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(17, 58, 77, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Column(
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
                              "Awaliyah",
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
                        Text(
                          "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(17, 58, 77, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Column(
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
                            "Ula",
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
                      Text(
                        "Nun Mati & Tanwin, Mim Mati dan Hukum Mad",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(17, 58, 77, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Column(
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
                            "Wustho",
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
                      Text(
                        "Cara Baca, Alif Lam Ta’rif dan Idgham ",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(17, 58, 77, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Column(
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
                            "Ulya",
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
                      Text(
                        "Waqaf, Ibtida’ dan Bacaan khusus didalam al-Qur’an",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
