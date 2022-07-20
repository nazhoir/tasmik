import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              CupertinoIcons.textformat_alt,
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
                      Row(
                        children: [
                          Image.asset(
                            "images/icon1.png",
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
                                color: Color.fromRGBO(77, 121, 136, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Pengertian Ilmu Tajwid dan Sejarah Perkembangannya",
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
                  height: 38,
                ),
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
          ),
        ],
      ),
    );
  }
}
