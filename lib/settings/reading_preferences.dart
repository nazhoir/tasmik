import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingPreferences extends StatefulWidget {
  const ReadingPreferences({Key? key}) : super(key: key);

  @override
  State<ReadingPreferences> createState() => RreadingPreferencesState();
}

class RreadingPreferencesState extends State<ReadingPreferences> {
  int arabfontSize = 25;
  int latinfontSize = 17;
  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
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
                      value: arabfontSize.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          arabfontSize = value.toInt();
                        });
                      },
                      min: 12.0,
                      max: 40.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ِبِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْم",
                        style: TextStyle(fontSize: arabfontSize.toDouble()),
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
                      value: latinfontSize.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          latinfontSize = value.toInt();
                        });
                      },
                      min: 12.0,
                      max: 40.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Bimisllahirrahminirrahim",
                        style: TextStyle(fontSize: latinfontSize.toDouble()),
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
