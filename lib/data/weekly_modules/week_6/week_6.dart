import 'package:flutter/material.dart';
import 'package:hero_minds/data/weekly_modules/widget_manager.dart';

class Week6 extends StatelessWidget {
  const Week6({super.key});

//Conttent in Week 6
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
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
          buildVideoButton(
              'Neuroscience of Mindfulness',
              //need to update the link
              'https://www.youtube.com/watch?v=ZToicYcHIOU'), //temp link
          buildVideoButton(
              'What is resilience, and inner strength?',
              //need to update the link
              'https://www.youtube.com/watch?v=U9YKY7fdwyg'), //temp link
          buildDropdown(
            context,
            'Reflection Questions: Three Questions',
            [
              "What are the three top reasons you want to continue practicing mindfulness after this program ends?",
              "Why do you believe will it be worth it to keep making time to practice?",
              "If you choose to keep going, how will you commit to making mindfulness a regular part of your life?",
            ],
          ),

          buildDropdownParagraph(
            context,
            'Looking Forward',
            'As you complete this 6-week mindfulness journey, take a moment to appreciate the time and care you’ve given to yourself. Whether you practiced every day or just dipped your toes in, you’ve planted seeds that can continue to grow with intention and consistency.\n\n'
                'Reflect on the practices that resonated most with you and consider how they might support you moving forward. Mindfulness isn’t about perfection, success, or failure—it’s about presence and persistence.\n\n'
                'Remember, life is made up of moments—and any moment can become mindful when we choose to pay attention with intention and curiosity.\n\n'
                'Thank you for being part of this experience. May your practice continue to support you in meaningful and lasting ways.',
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
