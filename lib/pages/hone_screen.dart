import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/tabs/hadih/hadith_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/time/time_tab.dart';

class HoneScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HoneScreen> createState() => _HoneScreenState();
}

class _HoneScreenState extends State<HoneScreen> {
  int curremtIndex = 0;
  List<Widget>tabs=[
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[curremtIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curremtIndex,
        onTap: (index) {
          curremtIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/quran.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/quran.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/hadith.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/hadith.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                'assets/icons/necklace-islam-svgrepo-com 1 (1).svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/necklace-islam-svgrepo-com 1 (1).svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/radio-svgrepo-com 1.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/radio-svgrepo-com 1.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/time.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/time.svg',
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
