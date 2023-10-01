

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';

part 'video_play_data.g.dart';

abstract class VideoPlayData implements Built<VideoPlayData, VideoPlayDataBuilder> {

  String? get iso_639_1;
  String? get iso_3166_1;
  String? get name;
  String? get key;
  String? get site;
  num? get size;
  String? get type;
  bool? get official;
  String? get published_at;
  String? get id;


  VideoPlayData._();
  factory VideoPlayData([void Function(VideoPlayDataBuilder) updates]) = _$VideoPlayData;

  static Serializer<VideoPlayData> get serializer => _$videoPlayDataSerializer;

  String toJson(){
    return json.encode(serializers.serializeWith(VideoPlayData.serializer,this));
  }
  static VideoPlayData? fromJson(String jsonString){
    return serializers.deserializeWith(VideoPlayData.serializer,json.decode(jsonString));
  }

}