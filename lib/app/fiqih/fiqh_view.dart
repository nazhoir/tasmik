import 'package:flutter/material.dart';
import 'package:tasmik/widgets/content_detail.dart';

class FiqhView extends StatelessWidget {
  const FiqhView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Content(
      content: [
        Heading(
          title: "Ilmu Fiqh",
          subtitle: "Materi Pembelajaran",
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
