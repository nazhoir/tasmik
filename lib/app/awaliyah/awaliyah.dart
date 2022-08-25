import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasmik/widgets/appbar_custom.dart';
import 'package:tasmik/widgets/expansiontile_custom.dart';

class Awaliyah extends StatefulWidget {
  const Awaliyah({Key? key}) : super(key: key);

  @override
  State<Awaliyah> createState() => _AwaliyahState();
}

// int index = 1;

// final TajwidList tajwidlist = tajwidList[index];

// int expansionTileLength = tajwidList.length;
// int expansionTileContentLength =
//     tajwidlist.listisi != null ? tajwidlist.listisi!.length : 0;

class _AwaliyahState extends State<Awaliyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        button: [
          AppbarButton(icon: CupertinoIcons.textformat_alt, onTap: () {}),
        ],
        centerTitle: true,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: const [
                ExpansionTileCustom(
                  title: "Apa Saja",
                  content: [
                    ExpansionTileContent(no: "1", title: ""),
                    ExpansionTileContent(no: "1", title: ""),
                    ExpansionTileContent(no: "1", title: ""),
                    ExpansionTileContent(no: "1", title: ""),
                    ExpansionTileContent(no: "1", title: ""),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
