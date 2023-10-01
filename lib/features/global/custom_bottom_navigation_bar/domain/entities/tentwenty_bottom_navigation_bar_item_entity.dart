import 'package:flutter/cupertino.dart';

class TenTwentyBottomNavigationBarItemEntity {
  final String title;
  final String icon;

  TenTwentyBottomNavigationBarItemEntity(
      {required this.title, required this.icon});


  static  List<TenTwentyBottomNavigationBarItemEntity> bottomNavBarItems = [
    TenTwentyBottomNavigationBarItemEntity(
      title: "Dashboard",
      icon: "assets/dashboard.png",
    ),
    TenTwentyBottomNavigationBarItemEntity(
      title: "Watch",
      icon: "assets/watch.png",
    ),
    TenTwentyBottomNavigationBarItemEntity(
      title: "Media Library",
      icon: "assets/media.png",
    ),
    TenTwentyBottomNavigationBarItemEntity(
      title: "More",
      icon: "assets/more.png",
    ),
  ];
}
