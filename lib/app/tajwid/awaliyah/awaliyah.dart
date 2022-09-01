import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/content_detail.dart';
import '../../../widgets/expansiontile_custom.dart';
import '../../../models/tajwid/awwaliyah_model.dart';

class Awaliyah extends StatefulWidget {
  const Awaliyah({Key? key}) : super(key: key);

  @override
  State<Awaliyah> createState() => _AwaliyahState();
}

class _AwaliyahState extends State<Awaliyah> {
  final AwwaliyahModel awwaliyah = awwaliyahList[0];
  // Huruf Hijaiyyah
  final AwwaliyahModel hurufHijaiiyah = awwaliyahList[1];
  final AwwaliyahModel pengenalanHurufHijaiiyah = awwaliyahList[2];
  final AwwaliyahModel tandaBaca = awwaliyahList[3];
  // Makharijul Huruf
  final AwwaliyahModel makhraj = awwaliyahList[4];
  final AwwaliyahModel pengenalanMakhraj = awwaliyahList[5];
  // Sifatul Huruf
  final AwwaliyahModel sifat = awwaliyahList[6];

  @override
  Widget build(BuildContext context) {
    return Content(
      content: [
        Heading(
          level: awwaliyah.level,
          title: awwaliyah.title,
        ),
        const SizedBox(
          height: 24,
        ),
        ExpansionTileCustom(
          title: hurufHijaiiyah.title,
          content: [
            ExpansionTileContent(
              no: "1",
              title: pengenalanHurufHijaiiyah.title,
              level: awwaliyah.level,
              data: pengenalanHurufHijaiiyah.conten,
            ),
            ExpansionTileContent(
              no: "2",
              title: tandaBaca.title,
              level: awwaliyah.level,
              data: tandaBaca.conten,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ExpansionTileCustom(
          title: makhraj.title,
          content: [
            ExpansionTileContent(
              no: "1",
              title: pengenalanMakhraj.title,
              level: awwaliyah.level,
            ),
            ExpansionTileContent(
              level: awwaliyah.level,
              no: "2",
              title: "Html",
            ),
            ExpansionTileContent(
              level: awwaliyah.level,
              no: "3",
              title: "",
            ),
            ExpansionTileContent(
              level: awwaliyah.level,
              no: "4",
              title: "",
            ),
            ExpansionTileContent(
              level: awwaliyah.level,
              no: "5",
              title: "ini judul",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ExpansionTileCustom(
          title: sifat.title,
          content: const [
            ExpansionTileContent(
              no: "1",
              title: "",
            ),
            ExpansionTileContent(
              no: "2",
              title: "",
            ),
            ExpansionTileContent(
              no: "3",
              title: "",
            ),
            ExpansionTileContent(
              no: "4",
              title: "",
            ),
            ExpansionTileContent(
              no: "5",
              title: "",
            ),
          ],
        ),
      ],
    );
  }
}
