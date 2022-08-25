import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/widgets/heading_detail_content.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import 'appbar_custom.dart';

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
              children: [
                HeadingDetailContent(level: level, title: title),
                content
              ],
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
