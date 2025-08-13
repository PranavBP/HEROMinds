import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';
import 'package:hero_minds/models/meditation_model.dart';

class Week2 extends StatelessWidget {
  const Week2({super.key});

//Conttent in Week 2
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          const Text(
            'Week 2: Anchoring the attention',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          //Videos needs to be changed with the one given
          const SizedBox(height: 16),
          buildDropdownParagraph(
            context,
            'Brief Overview of Week 2',
            'The mind has an incredible ability to travel through time reflecting on the past, anticipating the future — but the body is always grounded in the present. Through the body and the senses, we always have direct access to the present moment.',
          ),

          buildDropdown(
            context,
            'Three Questions to Consider',
            [
              "What challenges or surprises are you noticing in the daily body scan practice?",
              "What are some of the ways that bringing more mindful awareness into your day could benefit you?",
              "What would it mean if you could be aware of all your experiences—both the pleasant and the unpleasant—with a sense of curiosity instead of judgment?",
            ],
          ),
          //Body scan all 3 videos to be accessed by user here(as a drop down)
          //
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
            'Choose one Routine Activity and bring full awareness to the experience (ex., brushing the teeth, drinking coffee, showering, waiting in line, etc.)',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
