import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hero_minds/data/weekly_modules/week_4/week_4_stop.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hero_minds/models/meditation_model.dart';
import 'package:hero_minds/screens/tab screens/mindfulness/player_screen.dart';

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
    padding: const EdgeInsets.all(16.0),
    child: Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PlayerScreen(meditation: meditation),
            ),
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
    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0,),
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
              padding: const EdgeInsets.fromLTRB(20, 6, 16, 6),
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
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
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
