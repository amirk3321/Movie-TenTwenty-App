import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/reservation/domain/hall_entity.dart';
import 'package:movie_tentwenty_app/features/reservation/presentation/widgets/reservation_common.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/hero_animation_const.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/page_const.dart';

class ReservationPage extends StatefulWidget {
  final AppEntity appEntity;

  const ReservationPage({Key? key, required this.appEntity}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  final _todayDate = DateTime.now();
  int _dayIndex = 0;
  int _currentHallSelectedIndex = 0;

  String _getMovieTitle() {
    if (widget.appEntity.searchMoviesData != null) {
      return widget.appEntity.searchMoviesData!.title!;
    } else {
      return widget.appEntity.upcomingMovieData!.title.toString();
    }
  }
  String _getMovieReleaseDate() {
    if (widget.appEntity.searchMoviesData != null) {
      return widget.appEntity.searchMoviesData!.release_date!;
    } else {
      return widget.appEntity.upcomingMovieData!.release_date.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 111,
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
              top: 64,
            ),
            decoration: const BoxDecoration(
              color: colorWhite,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 GestureDetector(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_ios)),
                Column(
                  children: [
                    Text(
                      _getMovieTitle(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      "In theater ${_getMovieReleaseDate()}",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500,color: color61C3F2),
                    ),
                  ],
                ),
                const Text(""),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: colorDBDBDF,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Date",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: reservationDays.map((reservationDay) {
                        final index = reservationDays.indexOf(reservationDay);

                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Animate(
                            effects: [
                              SlideEffect(
                                  begin: const Offset(-1, 0),
                                  duration: Duration(
                                      milliseconds: 100 + (index + 2 * 100))),
                              const FadeEffect(
                                  curve: Curves.easeIn,
                                  duration: Duration(
                                    milliseconds: 400,
                                  )),
                            ],
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _dayIndex = index;
                                  });
                                },
                                child: _daysBoxWidget(
                                    reservationDay,
                                    DateFormat("dd MMM").format(DateTime(
                                        _todayDate.year,
                                        _todayDate.month,
                                        _todayDate.day + index)),
                                    index,
                                    DateFormat("E").format(DateTime(
                                        _todayDate.year,
                                        _todayDate.month,
                                        _todayDate.day + index)))),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: HallEntity.hallList.map((item) {
                        final index = HallEntity.hallList.indexOf(item);

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  item.time,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  item.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: color8F8F8F),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentHallSelectedIndex = index;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: index == _currentHallSelectedIndex
                                          ? color61C3F2
                                          : Colors.transparent,
                                    )),
                                padding: const EdgeInsets.all(10),
                                height: 145,
                                width: 249,
                                child: Image.asset(item.hallImage),
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "From",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: color8F8F8F),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  item.fromPrice,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "or",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: color8F8F8F),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  item.bonus,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, PageConst.selectReservationPage,arguments: widget.appEntity);
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Animate(
                          effects: const [
                            FadeEffect(
                                curve: Curves.easeIn,
                                duration: Duration(
                                  milliseconds: 400,
                                )),
                          ],
                          child: Hero(
                            tag: HeroAnimationConst
                                .reservationProcessToPayOrderSummeryImgTag,
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.bottomCenter,
                              height: 65,
                              decoration: BoxDecoration(
                                  color: color61C3F2,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text(
                                  "Select Seats",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _daysBoxWidget(String value, String dateValue, int index, String day) {
    if (day == "Fri" || day == "Thu") {
      return const SizedBox(
        height: 0,
        width: 0,
      );
    } else {
      return Container(
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _dayIndex == index ? color61C3F2 : colorA6A6A6,
        ),
        padding: const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
        child: Row(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  dateValue,
                  style: TextStyle(
                      color: _dayIndex == index ? colorWhite : colorBlack),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
