
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/dates_data.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movie_data.dart';

part 'upcoming_movies_model.g.dart';



abstract class UpcomingMoviesModel implements Built<UpcomingMoviesModel, UpcomingMoviesModelBuilder> {
  DatesData? get dates;
  num? get page;
  BuiltList<UpcomingMovieData> get results;
  num? get total_pages;
  num? get total_results;

  UpcomingMoviesModel._();
  factory UpcomingMoviesModel([void Function(UpcomingMoviesModelBuilder) updates]) = _$UpcomingMoviesModel;


  static Serializer<UpcomingMoviesModel> get serializer => _$upcomingMoviesModelSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(UpcomingMoviesModel.serializer,this));
  }
  static UpcomingMoviesModel? fromJson(String jsonString){
    return serializers.deserializeWith(UpcomingMoviesModel.serializer,json.decode(jsonString));
  }
}