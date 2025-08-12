// import 'package:flutter/material.dart';
// import 'package:hero_minds/data/weekly_modules/widget_manager.dart';

// import 'package:hero_minds/models/meditation_model.dart';

// class Week1 extends StatelessWidget {
//   const Week1({super.key});

// //Conttent in Week 1
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //Header
//           // const Text(
//           //   'Week 1: Awareness',
//           //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//           // ),
//           //Videos needs to be changed with the one given
//           // const SizedBox(height: 16),
//           sectionWrapper(buildVideoButton(
//               'What is Mindfulness?',
//               //need to change the videos from Firebase
//               'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20One.mp4?alt=media&token=2db95738-3201-458b-9390-03dd55ba3713')),
//           sectionWrapper(buildVideoButton(
//               'Hero Mind Introduction',
//               //need to change the videos from Firebase
//               'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20Two.mp4?alt=media&token=b3e9868b-668c-4828-893e-6f01d96f4bf8')), //temp link
//           sectionWrapper(buildVideoButton('Hero Mind App Introduction',
//               'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FintroHero.mp4?alt=media&token=e42c12c6-dda6-4ee0-9997-f6079d09250c')), // Firebase video

//           buildDropdownParagraph(
//             context,
//             'Brief Overview of Week 1',
//             'Mindfulness is the awareness that arises when we intentionally pay attention to the present moment without judgment. This capacity for mindfulness already exists within us — we simply need to remember to tap into it. This is why consistent practice is so important.',
//           ),
//           //video needs to be updated once Dr. chang gives us
//           // sectionWrapper(buildVideoButton('Turn Off Autopilot',
//           //     'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/audio%2Fautopilot.mp3?alt=media&token=11313ca4-dc0f-4baa-871b-1337bd4b399e')), //temp link
//           buildMeditationCard(
//             context,
//             Meditation(
//               title: "Turn Off Autopilot",
//               description:
//                   "Reconnect with the present moment and regain mindful control.",
//               duration: 95,
//               track: "autopilot",
//               trackExtension: "mp3",
//               image: "assets/mindfulness/photo1.jpg",
//               backgroundVideo: "fiveMinBS",
//               category: "Mindfulness Practices",
//             ),
//           ),

//           buildDropdown(
//             context,
//             'Three Questions to Consider',
//             [
//               "How can you tell when you’re in autopilot mode and when you’re fully aware and awake in the moment?",
//               "What are the downsides of spending too much time in autopilot mode?",
//               "Why is taking care of yourself important to you?",
//             ],
//           ),
//           //Body scan all 3 videos to be accessed by user here(as a drop down)

//           buildWidgetDropdown(
//             context,
//             'Formal Practice every day - Body Scan (any length)',
//             [
//               buildMeditationCard(
//                 context,
//                 Meditation(
//                   title: "5 Min Body Scan",
//                   description:
//                       "Embark on a five-minute journey within, as you traverse the landscape of your body with gentle awareness.",
//                   duration: 364,
//                   track: "FiveMinBodyScan",
//                   trackExtension: "m4a",
//                   image: "assets/mindfulness/photo0.jpg",
//                   backgroundVideo: "fiveMinBS",
//                   category: "Body Scan Practices",
//                 ),
//               ),
//               buildMeditationCard(
//                 context,
//                 Meditation(
//                   title: "10 Min Body Scan",
//                   description:
//                       "Ten minutes of body awareness to invite deep relaxation and clarity.",
//                   duration: 661,
//                   track: "TenMinBodyScan",
//                   trackExtension: "m4a",
//                   image: "assets/mindfulness/photo6.jpg",
//                   backgroundVideo: "tenMinBS",
//                   category: "Body Scan Practices",
//                 ),
//               ),
//               buildMeditationCard(
//                 context,
//                 Meditation(
//                   title: "20 Min Body Scan",
//                   description:
//                       "Explore a deeper connection with your inner world through this 20-minute body scan.",
//                   duration: 1240,
//                   track: "body-scan-20-holland",
//                   trackExtension: "mp3",
//                   image: "assets/mindfulness/photo10.jpg",
//                   backgroundVideo: "simplyListen",
//                   category: "Body Scan Practices",
//                 ),
//               ),
//             ],
//           ),

//           // buildDropdownParagraph(
//           //   context,
//           //   'Formal Practice every day - Body Scan (any length)',
//           //   'Videos coming soon',
//           // ),

//           buildDropdownParagraph(
//             context,
//             'Informal Practice',
//             'Mindful Eating - Choose one meal, or even just part of a meal, to eat with full awareness. Focus on the experience using all your senses—taste, smell, texture, and the act of eating itself.',
//           ),

//           const SizedBox(height: 30),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';

import 'package:hero_minds/models/meditation_model.dart';
import 'package:hero_minds/widgets/Common/network_video_button.dart';

class Week1 extends StatelessWidget {
  const Week1({super.key});

//Conttent in Week 1
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          // const Text(
          //   'Week 1: Awareness',
          //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          // ),
          //Videos needs to be changed with the one given
          const SizedBox(height: 1),

          // Module(
          //     title: "What is Mindfulness?",
          //     assetUrl:
          //         "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20One.mp4?alt=media&token=2db95738-3201-458b-9390-03dd55ba3713",
          //     isVideo: true,
          //     isCompleted: false),
          // Module(
          //     title: "Hero Mind Introduction",
          //     assetUrl:
          //         "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20Two.mp4?alt=media&token=b3e9868b-668c-4828-893e-6f01d96f4bf8'",
          //     isVideo: true,
          //     isCompleted: false),
          // Module(
          //     title: "Hero Mind App Introduction",
          //     assetUrl:
          //         "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FintroHero.mp4?alt=media&token=e42c12c6-dda6-4ee0-9997-f6079d09250c",
          //     isVideo: true,
          //     isCompleted: false)

          NetworkVideoButton(
            title: "What is Mindfulness?",
            url:
                "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20One.mp4?alt=media&token=2db95738-3201-458b-9390-03dd55ba3713",
          ),

          NetworkVideoButton(
            title: "Hero Mind Introduction",
            url:
                "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FWhitfield%20-%20Video%20Two.mp4?alt=media&token=b3e9868b-668c-4828-893e-6f01d96f4bf8'",
          ),

          NetworkVideoButton(
            title: "Hero Mind App Introduction",
            url:
                "https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FintroHero.mp4?alt=media&token=e42c12c6-dda6-4ee0-9997-f6079d09250c",
          ),

          buildDropdownParagraph(
            context,
            'Brief Overview of Week 1',
            'Mindfulness is the awareness that arises when we intentionally pay attention to the present moment without judgment. This capacity for mindfulness already exists within us — we simply need to remember to tap into it. This is why consistent practice is so important.',
          ),

          NetworkVideoButton(
            title: 'Mindfulness and 1st Responders',
            url:
                'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2Fmindful1.mp4?alt=media&token=dd976c9b-bbd0-466c-9fab-3fb3b77b37cd',
          ),

          buildDropdown(
            context,
            'Three Questions to Consider',
            [
              "How can you tell when you’re in autopilot mode and when you’re fully aware and awake in the moment?",
              "What are the downsides of spending too much time in autopilot mode?",
              "Why is taking care of yourself important to you?",
            ],
          ),
          //Body scan all 3 videos to be accessed by user here(as a drop down)

          buildWidgetDropdown(
            context,
            'Formal Practice every day - Body Scan (any length)',
            [
              buildMeditationCard(
                context,
                Meditation(
                  title: "5 Min Body Scan",
                  description:
                      "Embark on a five-minute journey within, as you traverse the landscape of your body with gentle awareness.",
                  duration: 364,
                  track: "FiveMinBodyScan",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo0.jpg",
                  backgroundVideo: "fiveMinBS",
                  category: "Body Scan Practices",
                ),
              ),
              buildMeditationCard(
                context,
                Meditation(
                  title: "10 Min Body Scan",
                  description:
                      "Ten minutes of body awareness to invite deep relaxation and clarity.",
                  duration: 661,
                  track: "TenMinBodyScan",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo6.jpg",
                  backgroundVideo: "tenMinBS",
                  category: "Body Scan Practices",
                ),
              ),
              buildMeditationCard(
                context,
                Meditation(
                  title: "20 Min Body Scan",
                  description:
                      "Explore a deeper connection with your inner world through this 20-minute body scan.",
                  duration: 1240,
                  track: "body-scan-20-holland",
                  trackExtension: "mp3",
                  image: "assets/mindfulness/photo10.jpg",
                  backgroundVideo: "simplyListen",
                  category: "Body Scan Practices",
                ),
              ),
            ],
          ),

          buildDropdownParagraph(
            context,
            'Informal Practice',
            'Mindful Eating - Choose one meal, or even just part of a meal, to eat with full awareness. Focus on the experience using all your senses—taste, smell, texture, and the act of eating itself.',
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: buildMeditationCard(
              context,
              Meditation(
                title: "Raisin Meditation",
                description:
                    "Raisin meditation is a short mindfulness exercise where you take a single raisin and focus on it as if you’ve never seen one before—observing its texture, color, and smell, feeling it in your hand, and slowly tasting it. The goal is to fully experience the moment and bring awareness to a simple act like eating.",
                duration: 275,
                track: "raisin",
                trackExtension: "mp3",
                image: "assets/mindfulness/photo5.jpg",
                backgroundVideo: "sittingMedi",
                category: "Body Scan Practices",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: buildMeditationCard(
              context,
              Meditation(
                title: "Turn Off Auto Pilot",
                description:
                    "Turn Off Autopilot is a mindfulness practice that helps you break free from going through the day on habit mode. By pausing, noticing your surroundings, thoughts, and actions, you shift from automatic reactions to intentional awareness, allowing you to experience life more fully in the present moment.",
                duration: 85,
                track: "autopilot",
                trackExtension: "mp3",
                image: "assets/mindfulness/photo8.jpg",
                backgroundVideo: "tenMinBreathe",
                category: "Body Scan Practices",
              ),
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
