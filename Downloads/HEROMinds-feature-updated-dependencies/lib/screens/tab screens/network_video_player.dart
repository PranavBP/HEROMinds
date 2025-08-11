import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class NetworkVideoPlayerScreen extends StatefulWidget {
  final String videoUrl; // e.g. the getDownloadURL() from Firebase Storage

  const NetworkVideoPlayerScreen({super.key, required this.videoUrl});

  @override
  State<NetworkVideoPlayerScreen> createState() => _NetworkVideoPlayerScreenState();
}

class _NetworkVideoPlayerScreenState extends State<NetworkVideoPlayerScreen> {
  late final VideoPlayerController _videoController;
  ChewieController? _chewieController;
  String? _error;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    try {
      _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
      await _videoController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoController,
        aspectRatio: _videoController.value.aspectRatio == 0
            ? 16 / 9
            : _videoController.value.aspectRatio,
        autoPlay: true,
        looping: false,
        showOptions: false,
        showControls: true,
        allowFullScreen: true,
        fullScreenByDefault: false,
        allowedScreenSleep: false,
      );

      if (mounted) setState(() => _ready = true);
    } catch (e) {
      if (mounted) setState(() => _error = e.toString());
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Video')),
      body: Center(
        child: _error != null
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Error loading video:\n$_error'),
              )
            : _ready
                ? Chewie(controller: _chewieController!)
                : const CircularProgressIndicator(),
      ),
    );
  }
}
