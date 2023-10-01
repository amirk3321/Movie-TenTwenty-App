

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'movie_production_companies_data.g.dart';

abstract class MovieProductionCompaniesData implements Built<MovieProductionCompaniesData, MovieProductionCompaniesDataBuilder> {

  num? get id;
  String? get logo_path;
  String? get name;
  String? get origin_country;


  MovieProductionCompaniesData._();
  factory MovieProductionCompaniesData([void Function(MovieProductionCompaniesDataBuilder) updates]) = _$MovieProductionCompaniesData;


  static Serializer<MovieProductionCompaniesData> get serializer => _$movieProductionCompaniesDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(MovieProductionCompaniesData.serializer,this));
  }
  static MovieProductionCompaniesData? fromJson(String jsonString){
    return serializers.deserializeWith(MovieProductionCompaniesData.serializer,json.decode(jsonString));
  }

}