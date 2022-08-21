import 'package:flutter/material.dart';

class AppbarButton extends StatelessWidget {
  const AppbarButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  final Icon icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: icon,
      ),
    );
  }
}
