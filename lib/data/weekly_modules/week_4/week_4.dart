import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';
import 'package:hero_minds/models/meditation_model.dart';

class Week4 extends StatelessWidget {
  const Week4({super.key});

//Conttent in Week 4
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          const Text(
            'Week 4: Responding to stress',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          buildDropdownParagraph(
            context,
            'Brief Overview of Week 4',
            'Regular mindfulness practice can help us recognize our habitual reactions to stress and begin to interrupt the patterns that are causing us problems. Over time, we can learn to create space to respond skillfully, with greater clarity and intention, rather than just reacting automatically.',
          ),
          buildDropdown(
            context,
            'Three Questions to Consider',
            [
              "As you practice mindfulness, what are you starting to notice about how you usually react to stress?",
              "How might responding to stress more intentionally and skillfully affect you and the people who matter most in your life?",
              "In what ways could the STOP practice help you respond to stress with more creativity and flexibility?",
            ],
          ),

          //const StopPracticeView(),
          buildStopDropdown(),

          // all videos  Yoga and walking and sitting practice to be accessed by user here(as a drop down)
          buildWidgetDropdown(
            context,
            'Formal Practices each day - Body Scan or Mindful Movements and a Sitting Practice.',
            [
              // Body Scan
              buildMeditationCard(
                context,
                Meditation(
                  title: "10 Min Body Scan",
                  description:
                      "Embark on a sacred journey within, as you traverse the landscape of your body. In a mere ten minutes, the body scan reveals whispers of wisdom, invites profound relaxation, and unveils the treasures of self-awareness.",
                  duration: 661,
                  track: "TenMinBodyScan",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo6.jpg",
                  backgroundVideo: "tenMinBS",
                  category: "Body Scan Practices",
                ),
              ),

              // Mindful Movement (Yoga & Walking)
              buildMeditationCard(
                context,
                Meditation(
                  title: "15 Min Standing Yoga",
                  description:
                      "Move with mindful grace, and you will dance through life's challenges.",
                  duration: 934,
                  track: "MindfulMovement",
                  trackExtension: "mp3",
                  image: "assets/mindfulness/photo1.jpg",
                  backgroundVideo: "mindfulMove",
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

              // Sitting Practice (Choose one)
              buildMeditationCard(
                context,
                Meditation(
                  title: "20 Min Open Awareness",
                  description:
                      "Expand your mind and embrace the present moment with this 20-minute open awareness practice. Gently observe your thoughts, sensations, and surroundings without judgment, fostering a profound sense of clarity, acceptance, and connection to the world around you.",
                  duration: 1206,
                  track: "open-awareness-20",
                  trackExtension: "m4a",
                  image: "assets/mindfulness/photo14.jpg",
                  backgroundVideo: "walking",
                  category: "Sitting Practices",
                ),
              ),
              buildMeditationCard(
                context,
                Meditation(
                  title: "15 Min Sitting",
                  description:
                      "In the stillness of sitting meditation, we embrace the art of simply being. As we rest in the sanctuary of our breath and witness the ebb and flow of thoughts, we discover the boundless serenity that resides within us.",
                  duration: 844,
                  track: "SittingMeditation",
                  trackExtension: "mp3",
                  image: "assets/mindfulness/photo3.jpg",
                  backgroundVideo: "sittingMedi",
                  category: "Sitting Practices",
                ),
              ),
            ],
          ),

          buildDropdownParagraph(
            context,
            'Informal Practice',
            'Continue with your Routine Activity bringing full awareness to the experience.',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
