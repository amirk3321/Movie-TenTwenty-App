
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_data.dart';

part 'genre_model.g.dart';

abstract class GenreModel implements Built<GenreModel, GenreModelBuilder> {

  BuiltList<GenreData> get genres;

  GenreModel._();
  factory GenreModel([void Function(GenreModelBuilder) updates]) = _$GenreModel;

  static Serializer<GenreModel> get serializer => _$genreModelSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(GenreModel.serializer,this));
  }
  static GenreModel? fromJson(String jsonString){
    return serializers.deserializeWith(GenreModel.serializer,json.decode(jsonString));
  }
}