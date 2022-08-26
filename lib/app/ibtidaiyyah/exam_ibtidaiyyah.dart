import 'package:flutter/material.dart';
import '../../widgets/exam_card.dart';

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
      body: const ExamChoice(label: "A", content: "Apa itu", value: true),
    );
  }
}
