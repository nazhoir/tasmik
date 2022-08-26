import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasmik/widgets/expansiontile_custom.dart';
import '../../models/ibtidaiyyah_model.dart';
import '../../widgets/content_detail.dart';

class Ibtidaiyyah extends StatefulWidget {
  const Ibtidaiyyah({Key? key}) : super(key: key);

  @override
  State<Ibtidaiyyah> createState() => _IbtidaiyyahState();
}

final IbtidaiyyahModel ibtidaiyyah = ibtidaiyyahList[0];
final IbtidaiyyahModel definisi = ibtidaiyyahList[1];
final IbtidaiyyahModel sejarah = ibtidaiyyahList[2];
final IbtidaiyyahModel hukum = ibtidaiyyahList[3];

class _IbtidaiyyahState extends State<Ibtidaiyyah> {
  @override
  Widget build(BuildContext context) {
    return Content(
      content: [
        Heading(
          title: ibtidaiyyah.title.toString(),
          level: ibtidaiyyah.level,
        ),
        const SizedBox(
          height: 24,
        ),
        ContentMark(data: ibtidaiyyah.conten),
        const SizedBox(
          height: 24,
        ),
        ExpansionTileCustom(
          title: "Definis, Sejarah dan Hukum Mempelajari",
          content: [
            ExpansionTileContent(
              no: "1",
              title: definisi.title.toString(),
              level: ibtidaiyyah.level,
              data: definisi.conten,
            ),
            ExpansionTileContent(
              no: "2",
              title: sejarah.title.toString(),
              level: ibtidaiyyah.level,
              data: sejarah.conten,
            ),
            ExpansionTileContent(
              no: "3",
              title: hukum.title.toString(),
              level: ibtidaiyyah.level,
              data: hukum.conten,
            ),
          ],
        ),
      ],
    );
  }
}
