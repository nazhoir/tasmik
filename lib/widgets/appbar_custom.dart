import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget with PreferredSizeWidget {
  AppbarCustom({Key? key, this.centerTitle, required this.button})
      : super(key: key);

  final bool? centerTitle;
  final List<AppbarButton> button;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 70,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(17, 58, 77, 1),
        ),
        backgroundColor: Colors.white,
        centerTitle: centerTitle ?? false,
        title: Image.asset(
          "images/tasmiklogo.png",
          width: 100,
        ),
        actions: button);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class AppbarButton extends StatelessWidget {
  const AppbarButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Icon(icon),
      ),
    );
  }
}
