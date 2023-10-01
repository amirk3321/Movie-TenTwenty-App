import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

typedef OnYoutubeVideoCallBack = Function(YoutubePlayerController controller);
class PlayYoutubeVideoPage extends StatefulWidget {
  final VideoPlayModel videoPlay;



  const PlayYoutubeVideoPage({Key? key, required this.videoPlay})
      : super(key: key);

  @override
  _PlayYoutubeVideoPageState createState() => _PlayYoutubeVideoPageState();
}

class _PlayYoutubeVideoPageState extends State<PlayYoutubeVideoPage> {

  YoutubePlayerController? _youtubePlayerController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayerReady = false;

  @override
  void initState() {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: "${widget.videoPlay.results.first.key}",
      flags: const YoutubePlayerFlags(
          mute: false,
          hideControls: false,
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
      print("checkPlayerState $_playerState");
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
    _youtubePlayerController!.pause();
    _youtubePlayerController!.dispose();
    super.dispose();
  }
  Widget _willPopScopeBody(double fontSize) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.videoPlay.results.first.site!),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: youtubeHierarchy()),
    );
  }


  Widget youtubeHierarchy() {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: YoutubePlayer(
          controller: _youtubePlayerController!,
        ),
      ),
    );
  }

}