

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'movie_genres_data.g.dart';

abstract class MovieGenresData implements Built<MovieGenresData, MovieGenresDataBuilder> {

  num? get id;
  String? get name;


  MovieGenresData._();
  factory MovieGenresData([void Function(MovieGenresDataBuilder) updates]) = _$MovieGenresData;

  static Serializer<MovieGenresData> get serializer => _$movieGenresDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(MovieGenresData.serializer,this));
  }
  static MovieGenresData? fromJson(String jsonString){
    return serializers.deserializeWith(MovieGenresData.serializer,json.decode(jsonString));
  }
}