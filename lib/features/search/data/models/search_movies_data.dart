

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'search_movies_data.g.dart';

// TODO: create the built value

abstract class SearchMoviesData implements Built<SearchMoviesData, SearchMoviesDataBuilder> {

  bool? get adult;
  String? get backdrop_path;
  BuiltList<num> get genre_ids;
  num? get id;
  String? get original_language;
  String? get original_title;
  String? get overview;
  num? get popularity;
  String? get poster_path;
  String? get release_date;
  String? get title;
  bool? get video;
  num? get vote_average;
  num? get vote_count;


  SearchMoviesData._();
  factory SearchMoviesData([void Function(SearchMoviesDataBuilder) updates]) = _$SearchMoviesData;

  static Serializer<SearchMoviesData> get serializer => _$searchMoviesDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(SearchMoviesData.serializer,this));
  }
  static SearchMoviesData? fromJson(String jsonString){
    return serializers.deserializeWith(SearchMoviesData.serializer,json.decode(jsonString));
  }

}