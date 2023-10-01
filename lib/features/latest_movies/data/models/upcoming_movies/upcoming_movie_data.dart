

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'upcoming_movie_data.g.dart';

abstract class UpcomingMovieData implements Built<UpcomingMovieData, UpcomingMovieDataBuilder> {

  bool? get adult;
  String? get backdrop_path;
  BuiltList<num>? get genre_ids;
  num? get id;
  String? get original_language;
  String? get original_title;
  String? get overview;
  num get popularity;
  String? get poster_path;
  String? get release_date;
  String? get title;
  bool? get video;
  num? get vote_average;
  num get vote_count;


  UpcomingMovieData._();
  factory UpcomingMovieData([void Function(UpcomingMovieDataBuilder) updates]) = _$UpcomingMovieData;

  static Serializer<UpcomingMovieData> get serializer => _$upcomingMovieDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(UpcomingMovieData.serializer,this));
  }
  static UpcomingMovieData? fromJson(String jsonString){
    return serializers.deserializeWith(UpcomingMovieData.serializer,json.decode(jsonString));
  }

}