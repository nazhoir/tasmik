import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tasmik/app/fiqih/fiqh_view.dart';
import 'package:tasmik/app/tajwid/tajwid_view.dart';
import 'package:tasmik/constant.dart';

import 'package:tasmik/widgets/blog_list.dart';
import 'package:tasmik/widgets/card_blog.dart';
import 'package:tasmik/widgets/carousel_custom.dart';
import 'package:tasmik/widgets/content_detail.dart';
import 'package:tasmik/widgets/materi_card.dart';

import '../widgets/appbar_custom.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: primaryColor,
              toolbarHeight: 90,
              expandedHeight: (MediaQuery.of(context).size.height / 2) -
                  kBottomNavigationBarHeight,
              flexibleSpace: LayoutBuilder(
                builder: (context, cons) {
                  top = cons.biggest.height;
                  return FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    titlePadding: EdgeInsets.zero,
                    background: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 70,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "ِبِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْم",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "isepMisbah",
                                fontWeight: FontWeight.w800,
                                color: aksen2Color,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "فَبِأَيِّ آلَاءِ رَبِّكُمَا تُكَذِّبَانِ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "isepMisbah",
                                fontWeight: FontWeight.w400,
                                color: aksen2Color,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Maka ni'mat Tuhan kamu yang manakah yang kamu dustakan?,\n",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: aksen2Color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    title: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: top <= 110 ? 1.0 : 0.0,
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: aksen2Color,
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "images/tasmiklogo.png",
                              width: 80,
                            ),
                            AppbarButton(
                              size: 30,
                              padding: EdgeInsets.zero,
                              icon: CupertinoIcons.square_grid_2x2,
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: aksen2Color,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: const [
                      CarouselCourse(
                        title: "Rekomendasi",
                        detail: TajwidView(),
                        items: [
                          CardMateri(
                            image: "images/materi/quran.jpg",
                            title: "Ilmu Tajwid",
                            totalLevel: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                          CardMateri(
                            image: "images/materi/prayer.jpg",
                            title: "Ilmu Fiqh",
                            totalLevel: "20",
                            destination: FiqhView(),
                            duration: "20 Jam",
                          ),
                          CardMateri(
                            image: "images/materi/tauhid.jpg",
                            title: "Ilmu Tauhid",
                            totalLevel: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                        ],
                      ),
                      BlogList(
                        title: "Artikel Populer",
                        items: [
                          CardBlog(
                            category: "Al Qur'an",
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                        ],
                      ),
                      CarouselBlog(
                        title: "Blog",
                        detail: TajwidView(),
                        items: [
                          CardMateri(
                            image: "images/materi/quran.jpg",
                            title: "Ilmu Tajwid",
                            totalLevel: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                          CardMateri(
                            image: "images/materi/prayer.jpg",
                            title: "Ilmu Fiqh",
                            totalLevel: "20",
                            destination: FiqhView(),
                            duration: "20 Jam",
                          ),
                          CardMateri(
                            image: "images/materi/tauhid.jpg",
                            title: "Ilmu Tauhid",
                            totalLevel: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                        ],
                      ),
                      BlogList(
                        title: "Keislaman",
                        items: [
                          CardBlog(
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                          CardBlog(
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                          CardBlog(
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                          CardBlog(
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                          CardBlog(
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                        ],
                      ),
                      CarouselVideo(
                        title: "Video",
                        detail: TajwidView(),
                        items: [
                          CardVideo(
                            image: "images/materi/quran.jpg",
                            title:
                                "Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid",
                            category: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                          CardVideo(
                            image: "images/materi/prayer.jpg",
                            title: "Ilmu Fiqh",
                            category: "20",
                            destination: FiqhView(),
                            duration: "20 Jam",
                          ),
                          CardVideo(
                            image: "images/materi/tauhid.jpg",
                            title: "Ilmu Tauhid ",
                            category: "20",
                            destination: TajwidView(),
                            duration: "20 Jam",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
