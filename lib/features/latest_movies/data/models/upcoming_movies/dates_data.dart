

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'dates_data.g.dart';

abstract class DatesData implements Built<DatesData, DatesDataBuilder> {
  String get maximum;
  String get minimum;


  DatesData._();
  factory DatesData([void Function(DatesDataBuilder) updates]) = _$DatesData;

  static Serializer<DatesData> get serializer => _$datesDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(DatesData.serializer,this));
  }
  static DatesData? fromJson(String jsonString){
    return serializers.deserializeWith(DatesData.serializer,json.decode(jsonString));
  }

}