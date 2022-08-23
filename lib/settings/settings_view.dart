import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/settings/reading_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(17, 58, 77, 1)),
        backgroundColor: Colors.white,
        title: Text(
          "Pengaturan",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color.fromRGBO(17, 58, 77, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardSettings(
                settingName: "Mode Gelap",
                onTap: () {},
                icon: CupertinoIcons.moon,
              ),
              CardSettings(
                settingName: "Preferensi Membaca",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadingPreferences(),
                    ),
                  );
                },
                icon: CupertinoIcons.textformat_alt,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const Divider(
                  height: 5,
                  color: Color.fromRGBO(17, 58, 77, 1),
                ),
              ),
              const Text(
                "Tentang Aplikasi",
                style: TextStyle(
                  color: Color.fromRGBO(17, 58, 77, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CardSettings(
                settingName: "Periksa Pembaharuan",
                onTap: () {},
                icon: CupertinoIcons.arrow_2_circlepath,
              ),
              CardSettings(
                settingName: "Bagikan Aplikasi",
                onTap: () {},
                icon: CupertinoIcons.link,
              ),
              CardSettings(
                settingName: "Pertanyaan Umum",
                onTap: () {},
                icon: CupertinoIcons.question_circle,
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("Versi Beta 1.0"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardSettings extends StatelessWidget {
  const CardSettings({
    Key? key,
    required this.settingName,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String settingName;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(77, 121, 136, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              settingName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            const Icon(
              CupertinoIcons.right_chevron,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
