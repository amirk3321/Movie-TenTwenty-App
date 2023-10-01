

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_tentwenty_app/features/global/serializer/serializer.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_data.dart';

part 'video_play_model.g.dart';

abstract class VideoPlayModel implements Built<VideoPlayModel, VideoPlayModelBuilder> {


  num? get id;
  BuiltList<VideoPlayData> get results;

  VideoPlayModel._();
  factory VideoPlayModel([void Function(VideoPlayModelBuilder) updates]) = _$VideoPlayModel;


  static Serializer<VideoPlayModel> get serializer => _$videoPlayModelSerializer;

  String toJson() {
    return json.encode(serializers.serializeWith(VideoPlayModel.serializer, this));
  }

  static VideoPlayModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(VideoPlayModel.serializer, json)!;
  }

}