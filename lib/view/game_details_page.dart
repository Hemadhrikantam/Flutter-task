import 'package:fillrolltask/utils/app_colors.dart';
import 'package:fillrolltask/view/get_app_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetailsPage extends StatefulWidget {
  const GameDetailsPage({super.key});

  @override
  State<GameDetailsPage> createState() => _GameDetailsPageState();
}

class _GameDetailsPageState extends State<GameDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.43,
                  width: MediaQuery.sizeOf(context).width,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            Image.asset('assets/images/IMG_20231210_073203.jpg')
                                .image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 12),
                  child: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_sharp),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BOOM BEACH",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 12, top: 6),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Icon(
                    Icons.star_half_rounded,
                    size: 18,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.file_download_outlined,
                      color: Colors.white38),
                  Text(
                    " 50M+ | ",
                    style: GoogleFonts.mulish(color: Colors.white38),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.white38),
                  Expanded(
                    child: Text(
                      " 3M+",
                      style: GoogleFonts.mulish(color: Colors.white38),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 26,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1.0, color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetAppPage()),
                            );
                          },
                          child: Text(
                            "Get",
                            style: GoogleFonts.mulish(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Divider(
              color: Colors.white38,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOP GAMERS:",
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
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.appPrimaryColor2,
                  backgroundImage: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4XQ6WY2z0avJwBQTHZZGsQQ2pu_bexFWWQ&usqp=CAU'),
                ),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.appPrimaryColor2,
                  backgroundImage: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw7c-g_KNNLYjU7Qo1DMmbDAi0bFekom7iqg&usqp=CAU'),
                ),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.appPrimaryColor2,
                  backgroundImage: const NetworkImage(
                      'https://i.playboard.app/p/63362d1255690f9d7fc1127b59f1c2d1/default.jpg'),
                ),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.appPrimaryColor2,
                  backgroundImage: const NetworkImage(
                      'https://media.hitekno.com/thumbs/2019/07/24/51543-kimi-hime/730x480-img-51543-kimi-hime.jpg'),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "INTRODUCTION",
                style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 08,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et nulla magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: GoogleFonts.mulish(fontSize: 16, color: Colors.white38),
              ),
            )
          ],
        ),
      ),
    );
  }
}
