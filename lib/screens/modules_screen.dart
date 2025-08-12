// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hero_minds/models/activity.dart';

// import 'package:hero_minds/provider/theme_provider.dart';
// import 'package:hero_minds/screens/tab%20screens/network_video_player.dart';
// import 'package:hero_minds/screens/tab%20screens/video_player_screen.dart';
// import 'package:hero_minds/widgets/Common/youtube_player.dart';

// class ModuleScreen extends ConsumerWidget {
//   // final List<Module> modules;
//   final Activity activity;

//   const ModuleScreen({super.key, required this.activity});

//   // Check if the URL is a YouTube video by looking for "youtube" or "youtu.be" in the URL
//   bool isYouTubeUrl(String url) {
//     return url.contains('youtube.com') || url.contains('youtu.be');
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentTheme = ref.watch(themeNotifierProvider);

//     return Scaffold(
//       // backgroundColor: currentTheme.backgroundColor,
//       appBar: AppBar(
//         title: const Text("Weekly Modules"),
//       ),
//       body: Column(
//         children: [
//           activity.modules.isNotEmpty
//               ? ListView.builder(
//                     itemCount: activity.modules.length,
//                     itemBuilder: (context, index) {
//                       final module = activity.modules[index];
//                       return Card(
//                         elevation: 5.0,
//                         shadowColor: currentTheme.tabBarColor,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25.0)),
//                         child: ListTile(
//                           title: Text(
//                             module.title,
//                             style: const TextStyle(
//                               color: Colors.purple,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           trailing: Icon(
//                             module.isVideo ? Icons.videocam : Icons.audiotrack,
//                             color: Colors.purple,
//                           ),
//                           tileColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           contentPadding: const EdgeInsets.symmetric(
//                               vertical: 18.0, horizontal: 16.0),
//                           onTap: () {
//                             // Handle module click
//                             if (isYouTubeUrl(module.assetUrl)) {
//                               // If it's a YouTube video, open the YouTubePlayerScreen
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (ctx) {
//                                     return YouTubePlayerScreen(
//                                       videoUrl: module.assetUrl,
//                                     );
//                                   },
//                                 ),
//                               );
//                             } else {
//                               // If it's not a YouTube video, open your existing VideoPlayerScreen
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (_) => NetworkVideoPlayerScreen(
//                                     videoUrl: module.assetUrl,
//                                   ),
//                                 ),
//                               );
//                             }
//                           },
//                         ),
//                       );
//                     },
//                 )
//               : const SizedBox(
//                   height: 1,
//                 ),
//           Expanded(
//             flex: 1,
//             child: SingleChildScrollView(
//               child: activity.data ??
//                   const Text(
//                     "Sorry, New content will be added here soon. Stay Tuned for updates. Thank you :)",
//                     textAlign: TextAlign.center,
//                   ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hero_minds/models/activity.dart';

// import 'package:hero_minds/provider/theme_provider.dart';
// import 'package:hero_minds/screens/tab%20screens/network_video_player.dart';
// import 'package:hero_minds/screens/tab%20screens/video_player_screen.dart';
// import 'package:hero_minds/widgets/Common/youtube_player.dart';

// class ModuleScreen extends ConsumerWidget {
//   final Activity activity;

//   const ModuleScreen({super.key, required this.activity});

//   // Check if the URL is a YouTube video by looking for "youtube" or "youtu.be" in the URL
//   bool isYouTubeUrl(String url) {
//     return url.contains('youtube.com') || url.contains('youtu.be');
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentTheme = ref.watch(themeNotifierProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Weekly Modules"),
//       ),
//       body: Column(
//         children: [
//           // ---- Modules list: takes only the height it needs ----
//           if (activity.modules.isNotEmpty)
//             ListView.builder(
//               shrinkWrap: true, // measure to fit content
//               physics: const NeverScrollableScrollPhysics(), // no inner scrolling
//               itemCount: activity.modules.length,
//               itemBuilder: (context, index) {
//                 final module = activity.modules[index];
//                 return Card(
//                   elevation: 5.0,
//                   shadowColor: currentTheme.tabBarColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25.0),
//                   ),
//                   child: ListTile(
//                     title: Text(
//                       module.title,
//                       style: const TextStyle(
//                         color: Colors.purple,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     trailing: Icon(
//                       module.isVideo ? Icons.videocam : Icons.audiotrack,
//                       color: Colors.purple,
//                     ),
//                     tileColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     contentPadding: const EdgeInsets.symmetric(
//                       vertical: 18.0,
//                       horizontal: 16.0,
//                     ),
//                     onTap: () {
//                       if (isYouTubeUrl(module.assetUrl)) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (ctx) => YouTubePlayerScreen(
//                               videoUrl: module.assetUrl,
//                             ),
//                           ),
//                         );
//                       } else {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => NetworkVideoPlayerScreen(
//                               videoUrl: module.assetUrl,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                   ),
//                 );
//               },
//             )
//           else
//             const SizedBox(height: 1),

//           // ---- Details area: fills the remaining space and scrolls ----
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
//               child: activity.data ??
//                   const Text(
//                     "Sorry, new content will be added here soon. Stay tuned for updates. Thank you :)",
//                     textAlign: TextAlign.center,
//                   ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//------ without themes ------
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hero_minds/models/activity.dart';

import 'package:hero_minds/provider/theme_provider.dart';
import 'package:hero_minds/screens/tab screens/network_video_player.dart';
// import 'package:hero_minds/screens/tab screens/video_player_screen.dart'; // not used here
// import 'package:hero_minds/widgets/Common/youtube_player.dart';            // not used here

class ModuleScreen extends ConsumerWidget {
  final Activity activity;

  const ModuleScreen({super.key, required this.activity});

  bool isYouTubeUrl(String url) =>
      url.contains('youtube.com') || url.contains('youtu.be');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);

    return Stack(
      children: [
        // Background gradient
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: theme.backgroundGradient,
              ),
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: false,
            // title: Text(
            //   activity.name.isNotEmpty ? activity.name : 'Module',
            //   style: TextStyle(
            //     fontSize: 26,
            //     fontWeight: FontWeight.bold,
            //     color: theme.textColor,
            //   ),
            // ),
            iconTheme: IconThemeData(color: theme.textColor),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Optional header under the AppBar (keep or remove)
                // if (activity.name == "")
                //   Padding(
                //     padding:
                //         const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                //     child: Text(
                //       'Week 1: Awareness',
                //       style: TextStyle(
                //         fontSize: 26,
                //         fontWeight: FontWeight.bold,
                //         color: theme.textColor,
                //       ),
                //     ),
                //   ),

                if (activity.modules.isNotEmpty)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: activity.modules.length,
                    itemBuilder: (context, index) {
                      final module = activity.modules[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 4,
                        ),
                        child: Card(
                          elevation: 5.0,
                          shadowColor: theme.tabBarColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: ListTile(
                            title: Text(
                              module.title,
                              style: const TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              module.isVideo
                                  ? Icons.videocam
                                  : Icons.audiotrack,
                              color: Colors.purple,
                            ),
                            tileColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            onTap: () {
                              if (isYouTubeUrl(module.assetUrl)) {
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => NetworkVideoPlayerScreen(
                                      videoUrl: module.assetUrl,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      );
                    },
                  )
                else
                  const SizedBox(height: 1),

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(color: theme.textColor),
                      child: activity.data ??
                          const Text(
                            "Sorry, new content will be added here soon. Stay tuned for updates. Thank you :)",
                            textAlign: TextAlign.center,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// without themes ends here-----

// new code
