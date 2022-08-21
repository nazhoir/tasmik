import 'package:flutter/material.dart';

class ExamCard extends StatelessWidget {
  const ExamCard({Key? key, required this.soal, required this.pilihan})
      : super(key: key);

  final String soal;
  final Widget pilihan;
  final bool jawaban = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [Text(soal), pilihan],
      ),
    );
  }
}

class ExamChoice extends StatelessWidget {
  const ExamChoice(
      {Key? key,
      required this.label,
      required this.content,
      required this.value})
      : super(key: key);
  final String label;

  final String content;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (value != true) {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text("Salah"),
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text("Benar"),
            ),
          );
        }
      },
      child: Container(
        height: 100,
        width: 200,
        color: Colors.black54,
        child: Row(
          children: [
            Text(label),
            Text(content),
          ],
        ),
      ),
    );
  }
}
