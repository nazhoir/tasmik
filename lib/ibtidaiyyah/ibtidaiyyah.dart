import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/ibtidaiyyah/exam_ibtidaiyyah.dart';
import 'package:tasmik/widgets/conten_detail.dart';
import 'package:tasmik/widgets/heading_detail_content.dart';

import '../widgets/appbat_button.dart';

class Ibtidaiyyah extends StatefulWidget {
  const Ibtidaiyyah({Key? key}) : super(key: key);

  @override
  State<Ibtidaiyyah> createState() => _IbtidaiyyahState();
}

class _IbtidaiyyahState extends State<Ibtidaiyyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(17, 58, 77, 1)),
        backgroundColor: Colors.white,
        centerTitle: true,
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
              CupertinoIcons.textformat_alt,
              size: 24,
            ),
            onTap: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const HeadingDetailContent(
            level: "Ibtidaiyyah",
            title: "Pengertian Ilmu Tajwid dan Sejarah Perkembangannya",
          ),
          ContentDetail(
            content: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae, sit accumsan odio consequat blandit. Non venenatis egestas ac, semper sodales sed rhoncus, neque. Ultricies nullam pharetra, nibh auctor dignissim magna sollicitudin. Aliquet tincidunt ridiculus bibendum luctus lobortis aliquam. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae, sit accumsan odio consequat blandit. Non venenatis egestas ac, semper sodales sed rhoncus, neque. Ultricies nullam pharetra, nibh auctor dignissim magna sollicitudin. Aliquet tincidunt ridiculus bibendum luctus lobortis aliquam. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae, sit accumsan odio consequat blandit. Non venenatis egestas ac, semper sodales sed rhoncus, neque. Ultricies nullam pharetra, nibh auctor dignissim magna sollicitudin. Aliquet tincidunt ridiculus bibendum luctus lobortis aliquam. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae, sit accumsan odio consequat blandit. Non venenatis egestas ac, semper sodales sed rhoncus, neque. Ultricies nullam pharetra, nibh auctor dignissim magna sollicitudin. Aliquet tincidunt ridiculus bibendum luctus lobortis aliquam.",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color.fromRGBO(17, 58, 77, 1),
                  ),
                ),
              ),
            ],
          ),
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
