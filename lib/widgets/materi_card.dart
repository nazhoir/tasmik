import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/constant.dart';
import 'package:tasmik/widgets/buttons_custom.dart';

class MateriCard extends StatelessWidget {
  const MateriCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.destination,
      required this.totalLevel,
      required this.duration})
      : super(key: key);

  final String image;
  final String title;
  final String totalLevel;
  final String duration;

  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(18),
          ),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                primaryColor.withOpacity(0.7), BlendMode.multiply),
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              child: Text(
                title,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: aksen2Color,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  decoration: const BoxDecoration(
                    color: aksen1Color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Text(
                    "Level : $totalLevel",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: aksen2Color,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  decoration: const BoxDecoration(
                    color: aksen1Color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Text(
                    "Durasi : $duration",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: aksen2Color,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const BookmarkButton()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardMateri extends StatelessWidget {
  const CardMateri(
      {Key? key,
      required this.image,
      required this.title,
      required this.totalLevel,
      required this.duration,
      required this.destination})
      : super(key: key);

  final String image;
  final String title;
  final String totalLevel;
  final String duration;

  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: 1000.0,
                height: 1000.0,
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        primaryColor
                        //add more colors for gradient
                      ],
                      begin: Alignment.topCenter, //begin of the gradient color
                      end: Alignment.bottomCenter, //end of the gradient color
                      stops: [0, 0.7] //stops for individual color
                      //set the stops number equal to numbers of color
                      ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 30,
                        child: Text(
                          title,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: aksen2Color,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: const BoxDecoration(
                              color: aksen1Color,
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),
                              ),
                            ),
                            child: Text(
                              "Level : $totalLevel",
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: aksen2Color,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: const BoxDecoration(
                              color: aksen1Color,
                              borderRadius: BorderRadius.all(
                                Radius.circular(9),
                              ),
                            ),
                            child: Text(
                              "Durasi : $duration",
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: aksen2Color,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const BookmarkButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardVideo extends StatelessWidget {
  const CardVideo(
      {Key? key,
      required this.image,
      required this.title,
      this.category,
      required this.duration,
      required this.destination})
      : super(key: key);

  final String image;
  final String title;
  final String? category;
  final String duration;

  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: aksen2Color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 3, //spread radius
            blurRadius: 10, // blur radius
            offset: const Offset(0, 0.5), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          )
        ],
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 130,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(9)),
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 1000.0,
                      height: 1000.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: aksen2Color.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: aksen2Color.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            CupertinoIcons.play_circle_fill,
                            color: primaryColor,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (category != null)
                  Text(
                    category.toString(),
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                  ),
                if (category != null)
                  const SizedBox(
                    height: 5,
                  ),
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
