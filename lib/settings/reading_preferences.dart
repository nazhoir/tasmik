import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tasmik/settings/data/font_size.dart';

class ReadingPreferences extends StatefulWidget {
  const ReadingPreferences({Key? key}) : super(key: key);

  @override
  State<ReadingPreferences> createState() => ReadingPreferencesState();
}

class ReadingPreferencesState extends State<ReadingPreferences> {
  int arabfontSize = 25;
  int latinfontSize = 17;

  @override
  Widget build(BuildContext context) {
    var ui = Provider.of<LTRSize>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(17, 58, 77, 1)),
        backgroundColor: Colors.white,
        title: Text(
          "Preferensi Membaca",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color.fromRGBO(17, 58, 77, 1),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Ukuran Teks Arab"),
                    Slider(
                      value: ui.sliderrtlFontSize,
                      onChanged: (neValue) {
                        setState(() {
                          ui.rtlFontSize = neValue;
                        });
                      },
                      min: 18.0,
                      max: 35.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ِبِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْم",
                        style: TextStyle(
                          fontSize: ui.rtlFontSize,
                          fontFamily: "isepMisbah",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Ukuran Teks Latin"),
                    Slider(
                      value: ui.sliderltrFontSize,
                      onChanged: (newValue) {
                        setState(() {
                          ui.ltrFontSize = newValue;
                        });
                      },
                      min: 0.5,
                      max: 40.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Bimisllahirrahminirrahim",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: ui.ltrFontSize,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
