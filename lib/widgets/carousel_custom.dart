import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class CarouselCourse extends StatelessWidget {
  const CarouselCourse(
      {Key? key,
      required this.items,
      required this.title,
      required this.detail})
      : super(key: key);

  final String title;
  final Widget detail;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: aksen2Color,
                    ),
                  ),
                ),
                Text(
                  "Selengkapnya",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: aksen2Color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CarouselSlider(
          items: items,
          options: CarouselOptions(
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
        ),
      ],
    );
  }
}

class CarouselVideo extends StatelessWidget {
  const CarouselVideo(
      {Key? key,
      required this.items,
      required this.title,
      required this.detail})
      : super(key: key);

  final String title;
  final Widget detail;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: aksen2Color,
                    ),
                  ),
                ),
                Text(
                  "Selengkapnya",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: aksen2Color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: items,
            options: CarouselOptions(
                enableInfiniteScroll: false,
                reverse: true,
                viewportFraction: 0.6,
                height: 250,
                // enlargeCenterPage: true,
                aspectRatio: 16 / 10,
                padEnds: false
                // autoPlay: true,
                ),
          ),
        ],
      ),
    );
  }
}

class CarouselBlog extends StatelessWidget {
  const CarouselBlog(
      {Key? key,
      required this.items,
      required this.title,
      required this.detail})
      : super(key: key);

  final String title;
  final Widget detail;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: aksen2Color,
                    ),
                  ),
                ),
                Text(
                  "Selengkapnya",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: aksen2Color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              viewportFraction: 1,
              aspectRatio: 16 / 11,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}
