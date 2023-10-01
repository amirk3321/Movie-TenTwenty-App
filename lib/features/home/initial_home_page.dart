import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movies_page.dart';

import '../global/theme/style.dart';

class InitialHomePage extends StatefulWidget {
  const InitialHomePage({Key? key}) : super(key: key);

  @override
  State<InitialHomePage> createState() => _InitialHomePageState();
}

class _InitialHomePageState extends State<InitialHomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
          color: color2E2739,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27)
          )
        ),
        child: CustomBottomNavigationBar(onChangeIndex: (index) {
          setState(() {
            _currentIndex=index;
          });
        },currentIndex: _currentIndex),
      ),
      body: _pageSwitch(),
    );
  }

  Widget _pageSwitch() {
    return const MoviesPage();
  }
}
