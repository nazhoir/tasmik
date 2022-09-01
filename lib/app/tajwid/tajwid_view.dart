import 'package:flutter/material.dart';
import 'package:tasmik/widgets/content_detail.dart';

import '../../widgets/level_card.dart';
import 'awaliyah/awaliyah.dart';
import 'ibtidaiyyah/ibtidaiyyah.dart';
import 'ula/ula.dart';
import 'ulya/ulya.dart';
import 'wustho/wustho.dart';

class TajwidView extends StatelessWidget {
  const TajwidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(content: [
      const Heading(
        title: "Ilmu Tajwid",
        subtitle: "Materi Pembelajaran",
      ),
      const SizedBox(
        height: 24,
      ),
      LevelCard(
        level: ibtidaiyyah.level.toString(),
        title: ibtidaiyyah.title.toString(),
        destination: const Ibtidaiyyah(),
      ),
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
    ]);
  }
}
