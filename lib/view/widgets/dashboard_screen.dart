import 'package:fillrolltask/utils/app_colors.dart';
import 'package:fillrolltask/view/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  backgroundColor: Colors.blue,
                  label: Text(
                    "Popular",
                    style:
                        GoogleFonts.mulish(color: Colors.white, fontSize: 16),
                  ),
                ),
                Text(
                  "New in",
                  style:
                      GoogleFonts.mulish(color: Colors.white38, fontSize: 16),
                ),
                Text(
                  "Action",
                  style:
                      GoogleFonts.mulish(color: Colors.white38, fontSize: 16),
                ),
                Text(
                  "Top ",
                  style:
                      GoogleFonts.mulish(color: Colors.white38, fontSize: 16),
                ),
              ],
            ),
            const Divider(
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 6,
                top: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNav()),
                      );
                    },
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.21,
                              child: ClipPath(
                                clipper: RoundedDiagonalPathClipper(),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.41,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24.0)),
                                    color: AppColors.appPrimaryColor2,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                              'assets/images/boombackground.jpg')
                                          .image,
                                    ),
                                  ),
                                ),
                              ),
                              //     ListView.builder(
                              //   physics: const ClampingScrollPhysics(),
                              //   shrinkWrap: true,
                              //   scrollDirection: Axis.horizontal,
                              //   itemCount: 10,
                              //   itemBuilder: (BuildContext context, int index) =>Card()
                              // ),
                            ),
                            Image.asset(
                              'assets/images/boombeach.webp',
                              height: 200,
                              width: 150,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "BOOM BEACH",
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.21,
                            child: ClipPath(
                              clipper: RoundedDiagonalPathClipper(),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.41,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(24.0)),
                                  color: AppColors.appPrimaryColor2,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                            'assets/images/coc-background.jpg')
                                        .image,
                                  ),
                                ),
                              ),
                            ),

                            //     ListView.builder(
                            //   physics: const ClampingScrollPhysics(),
                            //   shrinkWrap: true,
                            //   scrollDirection: Axis.horizontal,
                            //   itemCount: 10,
                            //   itemBuilder: (BuildContext context, int index) =>Card()
                            // ),
                          ),
                          Image.asset(
                            'assets/images/Barbarian_info.webp',
                            height: 200,
                            width: 200,
                            // height: MediaQuery.of(context).size.height*0.40,
                            // width:  MediaQuery.of(context).size.width*0.40,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "CLASH OF CLANS",
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.33,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColors.appPrimaryColor2,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomLeft: Radius.circular(22)),
                  // border: Border.all(color: AppColors.appPrimaryColor2,),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RECOMMENDED",
                            style: GoogleFonts.mulish(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Chip(
                            backgroundColor: Colors.blue,
                            label: Text(
                              "MORE",
                              style: GoogleFonts.mulish(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width * 0.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: AppColors.appPrimaryColor,
                                  image: DecorationImage(
                                      image: Image.asset(
                                              "assets/images/brawlstars.jpg")
                                          .image),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                "BRAWL STARS",
                                style: GoogleFonts.mulish(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white38),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width * 0.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: AppColors.appPrimaryColor,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                              "assets/images/\warheros.png")
                                          .image),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                "WAR HEROES",
                                style: GoogleFonts.mulish(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white38),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
