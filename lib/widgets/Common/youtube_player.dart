// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YouTubePlayerScreen extends StatefulWidget {
//   final String videoUrl;

//   const YouTubePlayerScreen({super.key, required this.videoUrl});

//   @override
//   State<StatefulWidget> createState() {
//     return _YouTubePlayerScreenState();
//   }
// }

// class _YouTubePlayerScreenState extends State<YouTubePlayerScreen> {
//   late YoutubePlayerController _controller;
//   bool _isPlaying = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
//       flags: const YoutubePlayerFlags(autoPlay: true, mute: false, loop: false),
//     )..addListener(() {
//         setState(() {
//           _isPlaying = _controller.value.isPlaying;
//         });
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final buttonWidth = screenWidth * 0.90;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('YouTube Player'),
//       ),
//       body: YoutubePlayerBuilder(
//         player: YoutubePlayer(
//           controller: _controller,
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Colors.amber,
//         ),
//         builder: (context, player) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // YouTube Player
//               player,
//               // Play/Pause Button
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       maximumSize: Size(buttonWidth, 42)
//                       // This changes the color of the text and icon
//                       ),
//                   onPressed: () {
//                     if (_isPlaying) {
//                       _controller.pause();
//                     } else {
//                       _controller.play();
//                     }
//                   },
//                   icon: Icon(
//                     _isPlaying ? Icons.pause : Icons.play_arrow,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     _isPlaying ? 'Pause' : 'Play',
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// /// Modal-sheet friendly player (no Scaffold)
// class _YouTubePlayerSheet extends StatefulWidget {
//   final String videoId;
//   final String title;
//   final double height;

//   const _YouTubePlayerSheet({
//     required this.videoId,
//     required this.title,
//     required this.height,
//   });

//   @override
//   State<_YouTubePlayerSheet> createState() => _YouTubePlayerSheetState();
// }

// class _YouTubePlayerSheetState extends State<_YouTubePlayerSheet> {
//   late YoutubePlayerController _controller;
//   bool _isPlaying = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//         loop: false,
//         controlsVisibleAtStart: true,
//         enableCaption: true,
//       ),
//     )..addListener(() {
//         if (!mounted) return;
//         setState(() => _isPlaying = _controller.value.isPlaying);
//       });
//   }

//   @override
//   void dispose() {
//     _controller.pause();
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final radius = const Radius.circular(20);

//     return SafeArea(
//       top: false,
//       child: Container(
//         height: widget.height,
//         decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.surface,
//           borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Grab handle
//             const SizedBox(height: 8),
//             Container(
//               width: 44,
//               height: 5,
//               decoration: BoxDecoration(
//                 color: Colors.black26,
//                 borderRadius: BorderRadius.circular(100),
//               ),
//             ),
//             // Header
//             Padding(
//               padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Text(
//                       widget.title,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(context).textTheme.titleMedium,
//                     ),
//                   ),
//                   IconButton(
//                     tooltip: 'Close',
//                     icon: const Icon(Icons.close),
//                     onPressed: () => Navigator.of(context).pop(),
//                   ),
//                 ],
//               ),
//             ),
//             // Player (16:9)
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: YoutubePlayer(
//                 controller: _controller,
//                 showVideoProgressIndicator: true,
//                 progressIndicatorColor: Colors.amber,
//               ),
//             ),
//             const SizedBox(height: 12),
//             // Simple Play/Pause
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 44,
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     if (_isPlaying) {
//                       _controller.pause();
//                     } else {
//                       _controller.play();
//                     }
//                   },
//                   icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
//                   label: Text(_isPlaying ? 'Pause' : 'Play'),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Optional extra space for description/controls
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
//                 child: const SizedBox.shrink(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }