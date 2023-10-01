import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/reservation/domain/reservation_seat_entity.dart';
import 'package:movie_tentwenty_app/features/reservation/presentation/widgets/curve_line.dart';
import 'package:movie_tentwenty_app/features/reservation/presentation/widgets/reservation_common.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/hero_animation_const.dart';
import 'package:movie_tentwenty_app/on_generate_route/page_const/page_const.dart';

class SelectSeatReservationPage extends StatefulWidget {
  final AppEntity appEntity;

  const SelectSeatReservationPage({Key? key, required this.appEntity})
      : super(key: key);

  @override
  State<SelectSeatReservationPage> createState() =>
      _SelectSeatReservationPageState();
}

class _SelectSeatReservationPageState extends State<SelectSeatReservationPage> {
  final _todayDate = DateTime.now();
  int _dayIndex = 0;
  int _timeIndex = 0;
  int _navLoungeIndex = 0;
  int _selectedSeatIndex = 0;
  String _selectedSeatRow = "";

  late TransformationController
      _controller; // Controller to manipulate the scale and position
  double _scale = 1.0; // Current scale value

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
  void initState() {
    super.initState();
    _controller = TransformationController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
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
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios)),
                      Column(
                        children: [
                          Text(
                            _getMovieTitle(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "In theater ${_getMovieReleaseDate()}",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: color61C3F2),
                          ),
                        ],
                      ),
                      const Text(""),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: colorDBDBDF,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      const SizedBox(
                        height: 55,
                      ),
                      Animate(
                          effects: const [
                            FadeEffect(
                                curve: Curves.easeIn,
                                duration: Duration(
                                  milliseconds: 400,
                                )),
                          ],
                          child: const Stack(
                            children: [
                              CurveLine(),
                              Positioned.fill(
                                  top: 38,
                                  child: Center(
                                      child: Text("Screens",
                                          style:
                                              TextStyle(color: color8F8F8F)))),
                            ],
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _loungeSeats(),
                      const SizedBox(
                        height:100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: _zoomIn,
                            child: Container(
                              height: 29,
                              width: 29,
                              decoration: const BoxDecoration(
                                  color: colorWhite, shape: BoxShape.circle),
                              child: const Icon(Icons.add),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: _zoomOut,
                            child: Container(
                              height: 29,
                              width: 29,
                              decoration: const BoxDecoration(
                                  color: colorWhite, shape: BoxShape.circle),
                              child: const Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: colorWhite,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      _seatItem(
                        image: "seat_1.png",
                        label: "Selected",
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      _seatItem(
                        image: "seat_3.png",
                        label: "Not Available",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      _seatItem(
                        image: "seat_4.png",
                        label: "Vip (150\$)",
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      _seatItem(
                        image: "seat_2.png",
                        label: "Regular (50\$)",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(229, 228, 228, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Wrap(
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: "4 / ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: colorBlack),
                              children: [
                                TextSpan(
                                    text: "3 row",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: colorBlack,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(Icons.close)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 65,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(229, 228, 228, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Price",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "\$ 50",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 2,
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, PageConst.paymentMethod,
                                    arguments: AppEntity(
                                        searchMoviesData:
                                            widget.appEntity.searchMoviesData,
                                        upcomingMovieData:
                                            widget.appEntity.upcomingMovieData,
                                        rowName: _selectedSeatRow,
                                        seatNumber: _selectedSeatIndex));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 65,
                                decoration: BoxDecoration(
                                    color: color61C3F2,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Center(
                                  child: Text(
                                    "Proceed to pay",
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
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _seatItem({String? image, String? label}) {
    return Row(
      children: [
        Image.asset(
          "assets/$image",
          width: 25,
          height: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label!,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(143, 143, 143, 1)),
        ),
      ],
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

  Widget _loungeSeats() {
    return InteractiveViewer(
      transformationController: _controller,
      boundaryMargin: const EdgeInsets.all(20.0),
      minScale: 0.5,
      maxScale: 3.0,
      child: Column(
        children: ReservationSeatEntity.redLoungeSeats.map((singleRow) {
          final rowIndex =
              ReservationSeatEntity.redLoungeSeats.indexOf(singleRow);

          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                    child: Animate(
                        effects: const [
                      SlideEffect(begin: Offset(-1, 0)),
                    ],
                        child: Text(
                          "${rowIndex + 1}",
                          style: const TextStyle(fontSize: 8),
                        ))),
                Row(
                  children: List.generate(singleRow.seats!, (index) {
                    double leftMargin = 1.5;
                    double rightMargin = 1.5;

                    if (rowIndex == 0) {
                      // for the first row with 18 seats
                      if (index == 2 || index == 16) {
                        leftMargin = 10.0; // adjusting the left margin here
                      }
                    } else if (rowIndex == 1 || rowIndex == 2) {
                      // for the next 2 rows with 22 seats
                      if (index == 4 || index == 18) {
                        leftMargin = 10.0; // adjusting the left margin here
                      }
                    } else {
                      // for the last 7 rows with 24 seats
                      if (index == 5 || index == 19) {
                        leftMargin = 10.0; // adjusting the left margin here
                      }
                    }

                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedSeatIndex = index;
                          _selectedSeatRow = singleRow.rowName!;
                        });
                        if (kDebugMode) {
                          print(_selectedSeatIndex);
                          print(_selectedSeatRow);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: leftMargin, right: rightMargin),
                        width: 12,
                        height: 12,
                        child: Stack(
                          children: [
                            Image.asset(index == _selectedSeatIndex &&
                                    _selectedSeatRow == singleRow.rowName
                                ? "assets/selected_seat.png"
                                : singleRow.isVip == true
                                    ? "assets/vip_seat.png"
                                    : "assets/regular_seat.png"),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                Container()
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  void _zoomIn() {
    setState(() {
      _scale += 0.1; // Increment the scale for zoom-in
      _controller.value = Matrix4.identity()..scale(_scale);
    });
  }

  void _zoomOut() {
    setState(() {
      _scale -= 0.1; // Decrement the scale for zoom-out
      _controller.value = Matrix4.identity()..scale(_scale);
    });
  }
}
