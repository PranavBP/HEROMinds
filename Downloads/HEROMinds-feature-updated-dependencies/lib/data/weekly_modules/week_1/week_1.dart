import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';

import 'package:hero_minds/models/meditation_model.dart';

class Week1 extends StatelessWidget {
  const Week1({super.key});

//Conttent in Week 1
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          // const Text(
          //   'Week 1: Awareness',
          //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          // ),
          //Videos needs to be changed with the one given
          const SizedBox(height: 16),

          buildDropdownParagraph(
            context,
            'Brief Overview of Week 1',
            'Mindfulness is the awareness that arises when we intentionally pay attention to the present moment without judgment. This capacity for mindfulness already exists within us — we simply need to remember to tap into it. This is why consistent practice is so important.',
          ),
          //video needs to be updated once Dr. chang gives us
          // sectionWrapper(buildVideoButton('Turn Off Autopilot',
          //     'https://firebasestorage.googleapis.com/v0/b/senior-pal-620d4.appspot.com/o/audio%2Fautopilot.mp3?alt=media&token=11313ca4-dc0f-4baa-871b-1337bd4b399e')), //temp link
          buildMeditationCard(
            context,
            Meditation(
              title: "Mindfulness and 1st Responders",
              description:
                  "Reconnect with the present moment and regain mindful control.",
              duration: 95,
              track: "mindful1",
              trackExtension: "mp3",
              image: "assets/mindfulness/photo9.jpg",
              backgroundVideo: "mindful1",
              category: "Mindfulness Practices",
            ),
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

          // buildDropdownParagraph(
          //   context,
          //   'Formal Practice every day - Body Scan (any length)',
          //   'Videos coming soon',
          // ),

          buildDropdownParagraph(
            context,
            'Informal Practice',
            'Mindful Eating - Choose one meal, or even just part of a meal, to eat with full awareness. Focus on the experience using all your senses—taste, smell, texture, and the act of eating itself.',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
