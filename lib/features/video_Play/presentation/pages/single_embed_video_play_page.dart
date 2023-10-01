import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class PlayEmbedVideo extends StatefulWidget {
  final VideoPlayModel videoPlay;

  const PlayEmbedVideo({Key? key, required this.videoPlay})
      : super(key: key);

  @override
  _PlayEmbedVideoState createState() => _PlayEmbedVideoState();
}

class _PlayEmbedVideoState extends State<PlayEmbedVideo> {

  YoutubePlayerController? _youtubePlayerController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayerReady = false;

  @override
  void initState() {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.videoPlay.results.first.key!,
      flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          isLive: false,
          autoPlay: false,
          controlsVisibleAtStart: true

      ),
    )..addListener(listener);

    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
    super.initState();
  }


  void listener() {
    if (_isPlayerReady && mounted && !_youtubePlayerController!.value.isFullScreen) {
      setState(() {
        _playerState = _youtubePlayerController!.value.playerState;
        _videoMetaData = _youtubePlayerController!.metadata;
      });
      if (kDebugMode) {
        print("checkPlayerState $_playerState");
      }
      if (_playerState==PlayerState.paused){
        _youtubePlayerController!.pause();
      }else{

      }
    }
  }
  @override
  Widget build(BuildContext context) {
   return _willPopScopeBody(14);
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _youtubePlayerController!.pause();
    super.deactivate();
  }
  @override
  void dispose() {
    _youtubePlayerController!.dispose();
    super.dispose();
  }
  Widget _willPopScopeBody(double fontSize) {


    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return Scaffold(
              resizeToAvoidBottomInset: true,
              body: SafeArea(child: youtubeHierarchy()),
            );
          } else {
            return  Scaffold(
              body: AspectRatio(
                aspectRatio: 16 / 9,
                child: YoutubePlayer(

                  controller: _youtubePlayerController!,
                  progressIndicatorColor: Colors.red,
                  showVideoProgressIndicator: true,

                  onReady: (){
                    _isPlayerReady = true;
                  },
                ),
              ),
            );
          }
        });
  }

  Widget youtubeHierarchy() {
    return Center(
      child: YoutubePlayer(
        controller: _youtubePlayerController!,
      ),
    );
  }

}