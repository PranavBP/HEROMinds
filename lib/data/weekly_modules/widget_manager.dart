import 'package:flutter/material.dart';
import 'package:hero_minds/screens/tab%20screens/mindfulness/player_info_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hero_minds/data/weekly_modules/week_4/week_4_stop.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hero_minds/models/meditation_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:hero_minds/widgets/Common/youtube_player.dart';

final AudioPlayer globalAudioPlayer = AudioPlayer();

Future<void> launchVideo(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

Widget sectionWrapper(Widget child) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
    child: child,
  );
}

Future<void> _openYouTubeSheet(
  BuildContext context, {
  required String url,
  required String title,
}) async {
  final videoId = YoutubePlayer.convertUrlToId(url);
  if (videoId == null || videoId.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Invalid YouTube URL')),
    );
    return;
  }

  await showModalBottomSheet(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0),
      ),
    ),
    backgroundColor: Colors.transparent,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    builder: (ctx) {
      final height = MediaQuery.of(ctx).size.height * 0.90;
      return _YouTubePlayerSheet(
        videoId: videoId,
        title: title,
        height: height,
      );
    },
  );
}

/// Your button, now opening the modal sheet.
Widget buildYoutubeVideoButton(BuildContext context, String title, String url) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
    child: SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () => _openYouTubeSheet(context, url: url, title: title),
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
          elevation: 4,
        ),
      ),
    ),
  );
}

Widget buildVideoButton(String title, String url) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0),
    child: SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () => launchVideo(url),
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

Widget buildDropdownWithWidgets(
    BuildContext context, String title, List<Widget> children) {
  return ExpansionTile(
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    children: children,
  );
}

Widget buildMeditationCard(BuildContext context, Meditation meditation) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            meditation.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          meditation.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          meditation.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () {
          showModalBottomSheet(
            useSafeArea: true,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: context,
            builder: (ctx) => PlayerInfoScreen(meditation: meditation),
          );
        },
      ),
    ),
  );
}

Widget buildWidgetDropdown(
    BuildContext context, String title, List<Widget> children) {
  return buildDropdownBase(
    context: context,
    title: title,
    children: children
        .map((widget) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: widget,
            ))
        .toList(),
  );
}

Widget buildStopDropdown() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0,),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          tilePadding:
              const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
          childrenPadding: const EdgeInsets.all(12.0),
          title: const Text(
            'One-Minute Breathing Space: The STOP Practice',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          children: const [
            StopPracticeView(),
          ],
        ),
      ),
    ),
  );
}

Widget buildDropdown(BuildContext context, String title, List<String> content) {
  return buildDropdownBase(
    context: context,
    title: title,
    children: content
        .map((line) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 6, 16, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("•  ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: Text(
                      line,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ))
        .toList(),
  );
}

// Widget buildDropdownParagraph(
//     BuildContext context, String title, String paragraph) {
//   return buildDropdownBase(
//     context: context,
//     title: title,
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Text(
//           paragraph,
//           textAlign: TextAlign.justify,
//           style: const TextStyle(fontSize: 16),
//         ),
//       )
//     ],
//   );
// }
Widget buildDropdownParagraph(
  BuildContext context,
  String title,
  String paragraph,
) {
  return buildDropdownBase(
    context: context,
    title: title,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints:
              const BoxConstraints(maxWidth: 1000), // or omit if not needed
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              paragraph,
              softWrap: true,
              textAlign: TextAlign.justify,
              textWidthBasis: TextWidthBasis.parent,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildDropdownBase({
  required BuildContext context,
  required String title,
  required List<Widget> children,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          collapsedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tilePadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          children: children,
        ),
      ),
    ),
  );
}

// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Modal-sheet friendly player (no Scaffold)
class _YouTubePlayerSheet extends StatefulWidget {
  final String videoId;
  final String title;
  final double height;

  const _YouTubePlayerSheet({
    required this.videoId,
    required this.title,
    required this.height,
  });

  @override
  State<_YouTubePlayerSheet> createState() => _YouTubePlayerSheetState();
}

class _YouTubePlayerSheetState extends State<_YouTubePlayerSheet> {
  late YoutubePlayerController _controller;
  bool _isPlaying = false;

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
        enableCaption: true,
      ),
    )..addListener(() {
        if (!mounted) return;
        setState(() => _isPlaying = _controller.value.isPlaying);
      });
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final radius = const Radius.circular(20);

    return SafeArea(
      top: false,
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Grab handle
            const SizedBox(height: 8),
            Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  IconButton(
                    tooltip: 'Close',
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            // Player (16:9)
            AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
              ),
            ),
            const SizedBox(height: 12),
            // Simple Play/Pause
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (_isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  },
                  icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                  label: Text(_isPlaying ? 'Pause' : 'Play'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Optional extra space for description/controls
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                child: const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}