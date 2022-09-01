import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);
  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Icon(
          isFavorite ? CupertinoIcons.bookmark_solid : CupertinoIcons.bookmark,
          color: Colors.white,
        ),
      ),
    );
  }
}
