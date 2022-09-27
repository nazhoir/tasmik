import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tasmik/settings/reading_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import '../settings/data/font_size.dart';
import 'appbar_custom.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    this.level,
    this.title,
    this.subtitle,
    this.margin,
    this.padding,
    this.cardDecoration,
    this.cardTextColor,
    this.cardIcon,
    this.titleSize,
    this.titleAlign,
  }) : super(key: key);
  final String? level;
  final String? subtitle;
  final String? title;

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? cardTextColor;

  final double? titleSize;
  final TextAlign? titleAlign;
  final bool? cardIcon;
  final Decoration? cardDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: margin,
      padding: padding,
      decoration: cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (level != null)
                if (cardIcon != true)
                  Image.asset(
                    "images/icon1.png",
                    height: 20,
                  )
                else
                  Image.asset(
                    "images/icon1-putih.png",
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
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: cardTextColor ?? primaryColor,
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
          if (title != null)
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Text(
                title.toString(),
                textAlign: titleAlign ?? TextAlign.start,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: titleSize ?? 28,
                    color: cardTextColor ?? primaryColor,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.content,
  }) : super(key: key);

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        centerTitle: true,
        button: [
          AppbarButton(
            icon: CupertinoIcons.textformat_alt,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReadingPreferences(),
                ),
              );
            },
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
              children: content,
            ),
          ),
        ),
      ),
    );
  }
}

class ContentMark extends StatefulWidget {
  const ContentMark({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  State<ContentMark> createState() => _ContentMarkState();
}

class _ContentMarkState extends State<ContentMark> {
  Future<void> _launcUrl(dynamic url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw "something wrong";
    }
  }

  @override
  Widget build(BuildContext context) {
    var ui = Provider.of<LTRSize>(context, listen: true);
    return MarkdownBody(
      data: widget.data,
      styleSheet: MarkdownStyleSheet(
        blockSpacing: 20,
        textAlign: WrapAlignment.spaceBetween,
        tableHeadAlign: TextAlign.center,
        tableCellsPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        tableBorder: TableBorder(
          left: const BorderSide(color: primaryColor),
          top: const BorderSide(color: primaryColor),
          bottom: const BorderSide(color: primaryColor),
          right: const BorderSide(color: primaryColor),
          verticalInside: const BorderSide(color: primaryColor),
          horizontalInside: const BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        tableHead: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: primaryColor,
          ),
        ),
        tableBody: TextStyle(
          fontFamily: "isepMisbah",
          fontWeight: FontWeight.w400,
          fontSize: ui.rtlFontSize.toDouble(),
          color: primaryColor,
        ),
        h1: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
            color: primaryColor,
          ),
        ),
        h2: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: primaryColor,
          ),
        ),
        h3: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: primaryColor,
          ),
        ),
        h4: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: primaryColor,
          ),
        ),
        p: TextStyle(
          fontFamily: "isepMisbah",
          fontWeight: FontWeight.w400,
          fontSize: ui.ltrFontSize.toDouble(),
          color: primaryColor,
        ),
        h6: TextStyle(
          fontFamily: "isepMisbah",
          fontWeight: FontWeight.w400,
          fontSize: ui.rtlFontSize.toDouble(),
          height: 2,
          color: primaryColor,
        ),
        h6Align: WrapAlignment.end,
        a: GoogleFonts.inter(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 17,
            color: secondaryColor,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted,
          ),
        ),
      ),
      onTapLink: (text, href, title) {
        href != null ? _launcUrl(href) : null;
      },
    );
  }
}

class ContentDetail extends StatelessWidget {
  const ContentDetail({
    Key? key,
    required this.level,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String level;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Content(content: [
      Heading(
        title: title,
        level: level,
      ),
      const SizedBox(
        height: 24,
      ),
      ContentMark(data: data)
    ]);
  }
}
