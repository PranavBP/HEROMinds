// import 'package:flutter/material.dart';

// class DifficultCommunicationScreen extends StatefulWidget {
//   const DifficultCommunicationScreen({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _DifficultCommunicationScreenState();
//   }
// }

// class _DifficultCommunicationScreenState
//     extends State<DifficultCommunicationScreen> {
//   final List<String> daysOfWeek = [
//     'Sunday',
//     'Monday',
//     'Tuesday',
//     'Wednesday',
//     'Thursday',
//     'Friday',
//     'Saturday'
//   ];

//   // List to store the answered state and responses for each day.
//   List<bool> answered = List.generate(7, (index) => false);

//   List<Map<String, String>> responses = List.generate(
//       7,
//       (index) => {
//             'communication': '',
//             'difficulty': '',
//             'wanted': '',
//             'otherWanted': '',
//             'feelings': '',
//           });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 1000,
//       child: ListView.builder(
//         itemCount: daysOfWeek.length,
//         itemBuilder: (context, index) {
//           return _buildDayCard(index);
//         },
//       ),
//     );
//   }

//   Widget _buildDayCard(int index) {
//     return Card(
//       margin: const EdgeInsets.all(10),
//       child: ExpansionTile(
//         title: Text(daysOfWeek[index]),
//         subtitle: answered[index]
//             ? const Text('Answered', style: TextStyle(color: Colors.green))
//             : const Text('Not Answered', style: TextStyle(color: Colors.red)),
//         children: [
//           _buildTextField(
//               index,
//               'Describe the communication. With Whom? Subject?',
//               'communication'),
//           _buildTextField(
//               index, 'How did the difficulty come about?', 'difficulty'),
//           _buildTextField(index,
//               'What did you really want? What did you actually get?', 'wanted'),
//           _buildTextField(
//               index, 'What did the other person(s) want?', 'otherWanted'),
//           _buildTextField(index, 'How did you feel during and after this time?',
//               'feelings'),
//           ElevatedButton(
//             onPressed: () {
//               // Check if all fields for this day are filled
//               if (responses[index]
//                   .values
//                   .every((response) => response.isNotEmpty)) {
//                 setState(() {
//                   answered[index] = true;
//                 });
//               }
//             },
//             child: const Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTextField(int index, String labelText, String key) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: TextField(
//         decoration: InputDecoration(
//           labelText: labelText,
//           border: const OutlineInputBorder(),
//         ),
//         onChanged: (value) {
//           setState(() {
//             responses[index][key] = value;
//           });
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DifficultCommunicationScreen extends StatefulWidget {
//   const DifficultCommunicationScreen({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _DifficultCommunicationScreenState();
//   }
// }

// class _DifficultCommunicationScreenState
//     extends State<DifficultCommunicationScreen> {
//   final List<String> daysOfWeek = [
//     'Sunday',
//     'Monday',
//     'Tuesday',
//     'Wednesday',
//     'Thursday',
//     'Friday',
//     'Saturday'
//   ];

//   // List to store the answered state and responses for each day.
//   List<bool> answered = List.generate(7, (index) => false);

//   List<Map<String, String>> responses = List.generate(
//       7,
//       (index) => {
//             'communication': '',
//             'difficulty': '',
//             'wanted': '',
//             'otherWanted': '',
//             'feelings': '',
//           });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 1000,
//       child: ListView.builder(
//         itemCount: daysOfWeek.length,
//         itemBuilder: (context, index) {
//           return _buildDayCard(index);
//         },
//       ),
//     );
//   }

//   Widget _buildDayCard(int index) {
//     return Card(
//       margin: const EdgeInsets.all(10),
//       child: ExpansionTile(
//         title: Text(daysOfWeek[index]),
//         subtitle: answered[index]
//             ? const Text('Answered', style: TextStyle(color: Colors.green))
//             : const Text('Not Answered', style: TextStyle(color: Colors.red)),
//         children: [
//           _buildQuestionWithTextField(
//               index,
//               'Describe the communication. With whom? Subject?',
//               'communication'),
//           _buildQuestionWithTextField(
//               index, 'How did the difficulty come about?', 'difficulty'),
//           _buildQuestionWithTextField(
//               index, 'What did you really want? What did you actually get?', 'wanted'),
//           _buildQuestionWithTextField(
//               index, 'What did the other person(s) want?', 'otherWanted'),
//           _buildQuestionWithTextField(index,
//               'How did you feel during and after this time?', 'feelings'),
//           ElevatedButton(
//             onPressed: () {
//               // Check if all fields for this day are filled
//               if (responses[index]
//                   .values
//                   .every((response) => response.isNotEmpty)) {
//                 setState(() {
//                   answered[index] = true;
//                 });
//               }
//             },
//             child: const Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQuestionWithTextField(int index, String questionText, String key) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             questionText,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8.0),
//           TextField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//             ),
//             onChanged: (value) {
//               setState(() {
//                 responses[index][key] = value;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

//----------UPDATED WEEK 5 CONTENT-------------//

import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';
import 'package:hero_minds/models/meditation_model.dart';

class Week5 extends StatelessWidget {
  const Week5({super.key});

//Conttent in Week 1
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          const Text(
            'Week 5: What we take in',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          buildDropdownParagraph(
            context,
            'Brief Overview of Week 5',
            'Mindfulness practice can heighten our awareness of what we take in through our senses—such as food, substances, exercise, TV, news, social media—and how these affect the quality of our lives and our relationships.',
          ),
          buildDropdown(
            context,
            'Reflection Questions: Three Questions',
            [
              "Which regular daily activities in your life feel nourishing, which feel depleting, and which are neutral for you?",
              "Where are you noticing moments of mindfulness showing up in your daily life?",
              "What changes are you or others noticing about you as you practice mindfulness?",
            ],
          ),
          //Body scan all 3 videos to be accessed by user here(as a drop down)
          buildWidgetDropdown(
            context,
            'Formal Practices each day – Body Scan or Mindful Movement practice. Sitting Practice (choose one – maybe one you haven’t tried before)',
            [
              // Body Scan Practices
              buildMeditationCard(
                context,
                Meditation(
                  title: "5 Min Body Scan",
                  description:
                      "Embark on a five-minute journey within, as you traverse the landscape of your body with gentle awareness. Let the body scan unveil the whispers of sensations, grounding you in the present moment and nurturing a deeper connection with yourself.",
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
                  title: "20 Min Body Scan",
                  description:
                      "Immerse yourself in a deeper exploration of your inner world with this 20-minute body scan. Gently guide your attention through each part of your body, uncovering a profound sense of relaxation, balance, and heightened self-awareness.",
                  duration: 1240,
                  track: "body-scan-20-holland",
                  trackExtension: "mp3",
                  image: "assets/mindfulness/photo10.jpg",
                  backgroundVideo: "simplyListen",
                  category: "Body Scan Practices",
                ),
              ),

              // Mindful Movement (Yoga or Walking)
              buildMeditationCard(
                context,
                Meditation(
                  title: "20 Min Chair Yoga",
                  description:
                      "Discover the perfect blend of gentle movement and mindful breathing with this 20-minute chair yoga session. Designed for all levels, this practice invites you to release tension, improve flexibility, and reconnect with your body—all from the comfort of your chair.",
                  duration: 1394,
                  track: "chair-yoga-20",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo11.jpg",
                  backgroundVideo: "tenMinBreathe",
                  category: "Movement Practices",
                ),
              ),
              buildMeditationCard(
                context,
                Meditation(
                  title: "5 Min Walking Practice",
                  description:
                      "Clear your mind and relax your soul and slip into tranquility. Walk slowly and calmly.",
                  duration: 285,
                  track: "WalkingMeditation",
                  trackExtension: "mp3",
                  image: "assets/mindfulness/photo8.jpg",
                  backgroundVideo: "walking",
                  category: "Movement Practices",
                ),
              ),

              // Sitting Practice (one you haven’t tried before)
              buildMeditationCard(
                context,
                Meditation(
                  title: "12 Min Focused Attention",
                  description:
                      "Center your mind and find clarity with this 12-minute focused attention practice. A simple yet powerful way to sharpen awareness and cultivate inner peace.",
                  duration: 801,
                  track: "focused-attention-12",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo12.jpg",
                  backgroundVideo: "tenMinBS",
                  category: "Sitting Practices",
                ),
              ),
              buildMeditationCard(
                context,
                Meditation(
                  title: "20 Min Open Awareness",
                  description:
                      "Expand your mind and embrace the present moment with this 20-minute open awareness practice. Gently observe your thoughts, sensations, and surroundings without judgment, fostering clarity and connection.",
                  duration: 1206,
                  track: "open-awareness-20",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo14.jpg",
                  backgroundVideo: "walking",
                  category: "Sitting Practices",
                ),
              ),
            ],
          ),

          buildDropdownParagraph(
            context,
            'Informal Practice',
            //need to add 2 videos( will be given by Molly/Dr. Chang later)
            'Continue to bring full awareness to your Routine Activity. One day this week, take a moment to pause and notice what’s happening for you each time you reach for your phone. What are you feeling? What are you seeking?',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
