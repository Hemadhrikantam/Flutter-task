import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:fillrolltask/utils/app_colors.dart';
import 'package:fillrolltask/view/widgets/dashboard_screen.dart';
import 'package:fillrolltask/view/widgets/fav_screen.dart';
import 'package:fillrolltask/view/widgets/games_screen.dart';
import 'package:fillrolltask/view/widgets/profile_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 4;
  final List<Widget> bottomBarPages = [
    const DashboardPage(),
    const FavPage(),
    const GamesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: AppColors.appPrimaryColor2,
              showLabel: false,
              notchColor: Colors.blue,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 206, 82, 227),
                  ),
                  activeItem: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem:
                      Image(image: AssetImage('assets/images/gameicon.webp'),color: Color.fromARGB(255, 245, 117, 159),),
                  activeItem: Image(
                    image: AssetImage('assets/images/gameicon.webp'),
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 241, 169, 193),
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}
