

import 'package:movie_tentwenty_app/features/global/serializer/models.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movie_data.dart';

class AppEntity {

  final UpcomingMovieData? upcomingMovieData;
  final SearchMoviesData? searchMoviesData;
  final String? tag;
  final String? rowName;
  final num? seatNumber;

  AppEntity({this.upcomingMovieData, this.tag,this.searchMoviesData,this.rowName,this.seatNumber});
}