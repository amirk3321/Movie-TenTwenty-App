import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/images/movie_image.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyTicketListSingleItem extends StatelessWidget {
  final AppEntity appEntity;
  const MyTicketListSingleItem({Key? key,required this.appEntity}) : super(key: key);


  String _getMovieTitle() {
    if (appEntity.searchMoviesData != null) {
      return appEntity.searchMoviesData!.title!;
    } else {
      return appEntity.upcomingMovieData!.title.toString();
    }
  }
  String _getMovieReleaseDate() {
    if (appEntity.searchMoviesData != null) {
      return appEntity.searchMoviesData!.release_date!;
    } else {
      return appEntity.upcomingMovieData!.release_date.toString();
    }
  }
  String? _getMovieImage() {
    if (appEntity.searchMoviesData != null) {
      return appEntity.searchMoviesData!.backdrop_path == null ? null : appEntity.searchMoviesData!.backdrop_path!;
    } else {
      return appEntity.upcomingMovieData!.backdrop_path == null ? null : appEntity.upcomingMovieData!.backdrop_path!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [

          SizedBox(
              width: double.infinity,
              height: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Hero(
                    tag: "${appEntity.tag}",
                    flightShuttleBuilder: (flightContext, animation, direction,
                        fromContext, toContext) {
                      return SizedBox(
                        height: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: moviePoster(
                                imageUrl: loadMovieDBImage(_getMovieImage()))),
                      );
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: moviePoster(
                            imageUrl: loadMovieDBImage(_getMovieImage()))),
                  ))),
          const SizedBox(height: 10),
          Animate(
              effects: const [
                SlideEffect(
                    begin: Offset(-1, 0),
                    curve: Curves.easeIn,
                    duration: Duration(
                        milliseconds: 150)),
              ],
              child:  Text(
                _getMovieTitle(),
                style: const TextStyle(
                    color: colorBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Animate(
                effects: const [
                  SlideEffect(
                      begin: Offset(-1, 0),
                      curve: Curves.easeIn,
                      duration: Duration(
                          milliseconds: 200)),
                ],
                child:  Text(
                  "Date: ${_getMovieReleaseDate()}",
                  style: const TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              Animate(
                effects: const [
                  SlideEffect(
                      begin: Offset(-1, 0),
                      curve: Curves.easeIn,
                      duration: Duration(
                          milliseconds: 250)),
                ],
                child: const Text(
                  "Time: 1:00 PM",
                  style: TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(-1, 0),
                  curve: Curves.easeIn,
                  duration: Duration(
                      milliseconds: 300)),
            ],
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Row: ${appEntity.rowName}",
                  style: const TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                Text(
                  "Seat: ${appEntity.seatNumber}",
                  style: const TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(-1, 0),
                  curve: Curves.easeIn,
                  duration: Duration(
                      milliseconds: 350)),
            ],
            child: const Text(
              "Lounge: Cinetech + hall 1",
              style: TextStyle(
                  color: colorBlack, fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            width: double.infinity,
            height: 1,
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: colorBlack)),
          ),
          const SizedBox(height: 10),
          Animate(
            effects: const [
              FadeEffect(curve: Curves.easeIn),
              ScaleEffect(duration: Duration(milliseconds: 150)),
            ],
            child: QrImageView(
              data: "Welcome to Online Booking\n name: johnDee\n booking Info: JohnDee Book Ticket Online\n Date: ${_getMovieReleaseDate()},\n Time:10:00PM\nSeat: Row ${appEntity.rowName} Seat Number ${appEntity.seatNumber}",
              version: QrVersions.auto,
              size: 100.0,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
