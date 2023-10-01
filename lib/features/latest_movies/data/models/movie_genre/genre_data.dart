
import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'genre_data.g.dart';

abstract class GenreData implements Built<GenreData, GenreDataBuilder> {

  int? get id;
  String? get name;

  GenreData._();
  factory GenreData([void Function(GenreDataBuilder) updates]) = _$GenreData;

  static Serializer<GenreData> get serializer => _$genreDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(GenreData.serializer,this));
  }
  static GenreData? fromJson(String jsonString){
    return serializers.deserializeWith(GenreData.serializer,json.decode(jsonString));
  }
}
