import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import 'appbar_custom.dart';

class HeadingContent extends StatelessWidget {
  const HeadingContent(
      {Key? key, this.level, required this.title, this.subtitle})
      : super(key: key);
  final String? level;
  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 34),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (level != null)
                Image.asset(
                  "images/icon1.png",
                  height: 20,
                ),
              if (level != null)
                const SizedBox(
                  width: 8,
                ),
              if (level != null)
                Text(
                  level!,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: primaryColor,
                    ),
                  ),
                ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: primaryColor,
                    ),
                  ),
                ),
            ],
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentDetail extends StatelessWidget {
  const ContentDetail({
    Key? key,
    required this.level,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String level;
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        centerTitle: true,
        button: [
          AppbarButton(
            icon: CupertinoIcons.textformat_alt,
            onTap: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [HeadingContent(level: level, title: title), content],
            ),
          ),
        ),
      ),
    );
  }
}

class ContentMark extends StatelessWidget {
  const ContentMark({Key? key, required this.data}) : super(key: key);
  Future<void> _launcUrl(dynamic url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw "something wrong";
    }
  }

  final String data;
  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: data,
      padding: EdgeInsets.zero,
      selectable: true,
      styleSheet: MarkdownStyleSheet(
        p: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: primaryColor,
          ),
        ),
        a: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 17,
            color: primaryColor,
          ),
        ),
      ),
      onTapLink: (text, href, title) {
        href != null ? _launcUrl(href) : null;
      },
    );
  }
}
