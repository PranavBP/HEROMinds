import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';
import 'package:hero_minds/models/meditation_model.dart';

class Week3 extends StatelessWidget {
  const Week3({super.key});

//Conttent in Week 3
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          const Text(
            'Week 3: Relating to stress',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          //Videos needs to be changed with the one given
          const SizedBox(height: 16),
          buildDropdownParagraph(
            context,
            'Brief Overview of Week 3',
            'Stress isn’t a bad thing; it can be a powerful motivator and even a lifesaver in certain situations. However, when stress becomes chronic, it can take a serious toll on our physical health, mental well-being, and our relationships. Practicing mindfulness can help us shift our perception of stress and change the way we respond to it.',
          ),

          sectionWrapper(buildVideoButton(
              'Types of Stress',
              //updated the link
              'https://www.youtube.com/watch?v=FnMLlQaq5T0')),

          buildDropdown(
            context,
            'Three Questions to Consider',
            [
              "What are some signs—physical, mental, emotional—that let you know you’re experiencing chronic stress?",
              "What are the healthy ways you cope with stress? What are the unhealthy ways you cope with or distract yourself from stress?",
              "How do the stories you tell yourself—like “I can’t handle this,” “Things will never change,” or “This is the worst,” —shape how you react to stress?",
            ],
          ),
          //Body scan all 3 videos to be accessed by user here(as a drop down)
          buildWidgetDropdown(
            context,
            'Formal Practice each day - Body Scan and 12 Min Focused Attention',
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
              buildMeditationCard(
                context,
                Meditation(
                  title: "12 Min Focused Attention",
                  description:
                      "Train your mind to stay present with this focused attention practice designed to build concentration.",
                  duration: 720,
                  track: "12MinFocusedAttention",
                  trackExtension: "m4a", // or "mp3", depending on your asset
                  image: "assets/mindfulness/photo3.jpg",
                  backgroundVideo: "focus12min",
                  category: "Focused Attention",
                ),
              ),
            ],
          ),
          buildDropdownParagraph(
            context,
            'Informal Practice',
            'Continue bringing full awareness to the experience of one Routine Activity. No need to move slowly, you can be mindful even at your usual pace!',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
