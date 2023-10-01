

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_genres_data.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_production_companies_data.dart';

part 'movie_details_model.g.dart';

abstract class MovieDetailsModel implements Built<MovieDetailsModel, MovieDetailsModelBuilder> {

  bool? get adult;
  String? get backdrop_path;
  num? get budget;
  BuiltList<MovieGenresData> get genres;
  String? get homepage;
  num? get id;
  String? get imdb_id;
  String? get original_language;
  String? get original_title;
  String? get overview;
  num? get popularity;
  String? get poster_path;
  BuiltList<MovieProductionCompaniesData> get production_companies;
  String? get release_date;
  num? get revenue;
  num? get runtime;
  // add spoken_languages
  String? get status;
  String? get tagline;
  String? get title;
  bool? get video;
  num? get vote_average;
  num? get vote_count;


  MovieDetailsModel._();
  factory MovieDetailsModel([void Function(MovieDetailsModelBuilder) updates]) = _$MovieDetailsModel;


  static Serializer<MovieDetailsModel> get serializer => _$movieDetailsModelSerializer;

  String toJson() {
    return json.encode(serializers.serializeWith(MovieDetailsModel.serializer, this));
  }

  static MovieDetailsModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieDetailsModel.serializer, json)!;
  }

}