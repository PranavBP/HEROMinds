import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';
import 'package:hero_minds/models/meditation_model.dart';

class Week6 extends StatelessWidget {
  const Week6({super.key});

//Conttent in Week 6
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          const Text(
            'Week 6: Building on resilience',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          buildDropdownParagraph(
            context,
            'Brief Overview of Week 6',
            'Studies have found that practicing mindfulness every day can actually change the structure of the brain. Just like regular workouts build physical strength, daily mindfulness can boost the brain’s ability to handle stress, stay focused, manage emotions, and connect us more deeply with ourselves, our values, and the people around us.',
          ),
          const SizedBox(height: 16),
          sectionWrapper(buildVideoButton(
              'What is Mindfulness?',
              //need to change the videos from Firebase
              'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2Fneuro.mp4?alt=media&token=f3b228e1-4664-407b-8339-71dbbc30e708')),
          sectionWrapper(buildVideoButton(
              'What is resilience and inner strength?',
              //updated the link
              'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/videos%2FstressBrain.mp4?alt=media&token=b7ee427c-272a-4a2c-8479-d4a0e3570f5f')),
          buildDropdown(
            context,
            'Three Questions to Consider',
            [
              "What are the three top reasons you want to continue practicing mindfulness after this program ends?",
              "Why do you believe it will be worth it to keep making time to practice?",
              "If you choose to keep going, how will you commit to making mindfulness a regular part of your life?",
            ],
          ),

          buildMeditationCard(
            context,
            Meditation(
              title: "Next Steps",
              description: "Next Steps in your mindfulness journey.",
              duration: 95,
              track: "nextstep",
              trackExtension: "mp3",
              image: "assets/mindfulness/photo13.jpg",
              backgroundVideo: "sleepMedi",
              category: "Mindfulness Practices",
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
