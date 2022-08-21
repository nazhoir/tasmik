import 'package:flutter/material.dart';

class ContentDetail extends StatelessWidget {
  const ContentDetail({Key? key, required this.content}) : super(key: key);

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: content,
      ),
    );
  }
}
