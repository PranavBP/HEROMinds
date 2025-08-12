import 'package:flutter/material.dart';
import 'package:hero_minds/screens/tab%20screens/network_video_player.dart';

class NetworkVideoButton extends StatelessWidget {
  final String title;
  final String url;

  const NetworkVideoButton({
    super.key,
    required this.title,
    required this.url,
  });

  void _openVideoPlayer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => NetworkVideoPlayerScreen(videoUrl: url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton.icon(
          onPressed: () => _openVideoPlayer(context),
          icon: const Icon(Icons.play_circle_fill, size: 24),
          label: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            elevation: 2,
          ),
        ),
      ),
    );
  }
}
