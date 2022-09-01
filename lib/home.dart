import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tasmik/app/fiqih/fiqh_view.dart';
import 'package:tasmik/app/tajwid/tajwid_view.dart';
import 'package:tasmik/constant.dart';

import 'package:tasmik/settings/settings_view.dart';
import 'package:tasmik/widgets/blog_list.dart';
import 'package:tasmik/widgets/card_blog.dart';
import 'package:tasmik/widgets/carousel_custom.dart';
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
      // appBar: AppbarCustom(button: [
      //   AppbarButton(
      //       icon: CupertinoIcons.square_grid_2x2,
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const Settings(),
      //           ),
      //         );
      //       })
      // ]),
      // backgroundColor: Colors.transparent,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // stretch: true,
              floating: true,
              pinned: true,

              // snap: true,

              backgroundColor: primaryColor,
              // collapsedHeight: 90,
              toolbarHeight: 90,
              expandedHeight: (MediaQuery.of(context).size.height / 2) -
                  kBottomNavigationBarHeight,

              flexibleSpace: LayoutBuilder(
                builder: (context, cons) {
                  top = cons.biggest.height;
                  return FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    titlePadding: EdgeInsets.zero,
                    background: Container(
                        color: primaryColor,
                        // ,
                        child: Image.asset(
                          "images/materi/quran.jpg",
                          fit: BoxFit.cover,
                          width: 1000,
                          height: 1000,
                        )),
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
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: aksen2Color,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const CarouselCourse(
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
                      const BlogList(
                        title: "Artikel Populer",
                        items: [
                          CardBlog(
                            category: "Al Qur'an",
                            title:
                                "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
                          ),
                        ],
                      ),
                      const CarouselBlog(
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
                      const BlogList(
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
                      const CarouselVideo(
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








// ListView(
//           children: [
           
//             Container(
//               height: MediaQuery.of(context).size.height / 2.4,
//             ),
//             const CarouselCourse(
//               title: "Rekomendasi",
//               detail: TajwidView(),
//               items: [
//                 CardMateri(
//                   image: "images/materi/quran.jpg",
//                   title: "Ilmu Tajwid",
//                   totalLevel: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//                 CardMateri(
//                   image: "images/materi/prayer.jpg",
//                   title: "Ilmu Fiqh",
//                   totalLevel: "20",
//                   destination: FiqhView(),
//                   duration: "20 Jam",
//                 ),
//                 CardMateri(
//                   image: "images/materi/tauhid.jpg",
//                   title: "Ilmu Tauhid",
//                   totalLevel: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//               ],
//             ),
//             const BlogList(
//               title: "Artikel Populer",
//               items: [
//                 CardBlog(
//                   category: "Al Qur'an",
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//               ],
//             ),
//             const CarouselBlog(
//               title: "Blog",
//               detail: TajwidView(),
//               items: [
//                 CardMateri(
//                   image: "images/materi/quran.jpg",
//                   title: "Ilmu Tajwid",
//                   totalLevel: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//                 CardMateri(
//                   image: "images/materi/prayer.jpg",
//                   title: "Ilmu Fiqh",
//                   totalLevel: "20",
//                   destination: FiqhView(),
//                   duration: "20 Jam",
//                 ),
//                 CardMateri(
//                   image: "images/materi/tauhid.jpg",
//                   title: "Ilmu Tauhid",
//                   totalLevel: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//               ],
//             ),
//             const BlogList(
//               title: "Keislaman",
//               items: [
//                 CardBlog(
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//                 CardBlog(
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//                 CardBlog(
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//                 CardBlog(
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//                 CardBlog(
//                   title:
//                       "Ini judul blog Ini judul blog Ini judul blog Ini judul blog Ini judul blog ",
//                 ),
//               ],
//             ),
//             const CarouselVideo(
//               title: "Video",
//               detail: TajwidView(),
//               items: [
//                 CardVideo(
//                   image: "images/materi/quran.jpg",
//                   title:
//                       "Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid Ilmu Tajwid",
//                   category: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//                 CardVideo(
//                   image: "images/materi/prayer.jpg",
//                   title: "Ilmu Fiqh",
//                   category: "20",
//                   destination: FiqhView(),
//                   duration: "20 Jam",
//                 ),
//                 CardVideo(
//                   image: "images/materi/tauhid.jpg",
//                   title: "Ilmu Tauhid ",
//                   category: "20",
//                   destination: TajwidView(),
//                   duration: "20 Jam",
//                 ),
//               ],
//             ),
//           ],
//         )