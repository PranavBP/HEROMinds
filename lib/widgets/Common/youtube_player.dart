import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class YouTubePlayerPage extends StatefulWidget {
  final String videoId;
  final String title;
  const YouTubePlayerPage({super.key, required this.videoId, required this.title});

  @override
  State<YouTubePlayerPage> createState() => _YouTubePlayerPageState();
}

class _YouTubePlayerPageState extends State<YouTubePlayerPage> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: false,
        controlsVisibleAtStart: true,
        enableCaption: false, // hide captions
      ),
    );
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    // Restore system UI/orientation just in case
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        // Optional: allow all orientations in fullscreen
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      },
      onExitFullScreen: () {
        // Back to normal UI/orientation
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            centerTitle: false,
          ),
          body: SafeArea(
            child: Column(
              children: [
                // Keep a 16:9 player area, then let the rest scroll
                AspectRatio(aspectRatio: 16 / 9, child: player),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: const SizedBox.shrink(), // put details/description here if needed
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
