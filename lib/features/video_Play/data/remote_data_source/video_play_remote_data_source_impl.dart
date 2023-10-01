import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_tentwenty_app/core/api_keys.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/remote_data_source/video_play_remote_data_source.dart';

class VideoPlayRemoteDataSourceImpl implements VideoPlayRemoteDataSource {
  final http.Client httpClient;

  VideoPlayRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<VideoPlayModel> playVideo(String movieId) async {
    String _endPoint = "movie/${movieId}/videos?language=en-US";

    final response = await httpClient.get(
      Uri.parse(endPoint(_endPoint)),
      headers: headerBearerOption(API_Read_Access_Token),
    );

    if (response.statusCode == 200) {
      return VideoPlayModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException(message: "Movie DB Server Exception");
    }
  }
}
