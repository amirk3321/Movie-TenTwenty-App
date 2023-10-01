import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_data.dart';

part 'search_movies_model.g.dart';

// TODO: create the built value

abstract class SearchMoviesModel
    implements Built<SearchMoviesModel, SearchMoviesModelBuilder> {

  num? get page;

  BuiltList<SearchMoviesData> get results;

  num? get total_pages;

  num? get total_results;

  SearchMoviesModel._();

  factory SearchMoviesModel([void Function(SearchMoviesModelBuilder) updates]) =
      _$SearchMoviesModel;

  static Serializer<SearchMoviesModel> get serializer => _$searchMoviesModelSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(SearchMoviesModel.serializer,this));
  }
  static SearchMoviesModel? fromJson(String jsonString){
    return serializers.deserializeWith(SearchMoviesModel.serializer,json.decode(jsonString));
  }
}
