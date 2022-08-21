import 'package:flutter/material.dart';
import 'package:qiroah/widgets/exam_card.dart';

class ExamIbtidaiyyah extends StatefulWidget {
  const ExamIbtidaiyyah({Key? key}) : super(key: key);

  @override
  State<ExamIbtidaiyyah> createState() => _ExamIbtidaiyyahState();
}

class _ExamIbtidaiyyahState extends State<ExamIbtidaiyyah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Taqyim"),
      ),
      backgroundColor: Colors.white,
      body: ExamChoice(label: "A", content: "Apa itu", value: true),
    );
  }
}
