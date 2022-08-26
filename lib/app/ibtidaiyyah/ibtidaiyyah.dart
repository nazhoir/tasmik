import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../app/ibtidaiyyah/exam_ibtidaiyyah.dart';
import '../../models/ibtidaiyyah_model.dart';
import '../../widgets/appbar_custom.dart';
import '../../widgets/content_detail.dart';

class Ibtidaiyyah extends StatefulWidget {
  const Ibtidaiyyah({Key? key}) : super(key: key);

  @override
  State<Ibtidaiyyah> createState() => _IbtidaiyyahState();
}

final IbtidaiyyahModel ibtidaiyyah = ibtidaiyyahList[0];

class _IbtidaiyyahState extends State<Ibtidaiyyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        centerTitle: true,
        button: [
          AppbarButton(
            icon: CupertinoIcons.textformat_alt,
            onTap: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Heading(
            level: "Ibtidaiyyah",
            title: "Pengertian Ilmu Tajwid dan Sejarah Perkembangannya",
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ContentMark(data: ibtidaiyyah.conten)),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExamIbtidaiyyah(),
                ),
              );
            },
            child: const Text("Taqyim"),
          ),
        ],
      ),
    );
  }
}
