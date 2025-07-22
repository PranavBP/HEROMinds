import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hero_minds/data/weekly_modules/week_1/week_1.dart';
import 'package:hero_minds/data/weekly_modules/week_2/week_2.dart';
import 'package:hero_minds/data/weekly_modules/week_3/week_3.dart';
import 'package:hero_minds/data/weekly_modules/week_4/week_4.dart';
import 'package:hero_minds/data/weekly_modules/week_5/week_5.dart';
import 'package:hero_minds/data/weekly_modules/week_6/week_6.dart';
import 'package:hero_minds/models/activity.dart';
import 'package:hero_minds/models/modules.dart';

// Sample list of activities
final List<Activity> activities = [
  Activity(
      name: "Week 1",
      desc: "Get Started!",
      image: "assets/images/intro.jpg",
      modules: [],
      data: const Week1()),
  // Activity(
  //   name: "Week 2",
  //   desc: "We're all Beginners",
  //   image: "assets/images/week1.jpg",
  //   modules: [],
  // ),
  // Activity(
  //     name: "Week 3",
  //     desc: "Shifting Perspective",
  //     image: "assets/images/week2.jpg",
  //     modules: []),
  Activity(
    name: "Week 2",
    desc: "Practice! Practice! Practice!",
    image: "assets/images/week2p.jpg",
    modules: [],
    data: const Week2(),
  ),
  Activity(
    name: "Week 3",
    desc: "Welcome to Week 3!",
    image: "assets/images/week3.jpg",
    modules: [],
    data: const Week3(),
  ),
  Activity(
    name: "Week 4",
    desc: "Welcome to Week 4!",
    image: "assets/images/week4p.jpg",
    modules: [],
    data: const Week4(),
  ),
  Activity(
    name: "Week 5",
    desc: "Welcome to Week 5!",
    image: "assets/images/week5p.JPG",
    modules: [],
    data: const Week5(),
  ),
  Activity(
    name: "Week 6",
    desc: "Welcome to Week 6!",
    image: "assets/images/week6p.jpg",
    modules: [],
    data: const Week6(),
  ),
  // Activity(
  //   name: "Week 5",
  //   desc: "Let's talk about Stress",
  //   image: "assets/images/week4.jpg",
  //   modules: [],
  //   data: const DifficultCommunicationScreen(),
  // ),
];

// Riverpod provider for the activity list
final activityProvider = Provider<List<Activity>>((ref) {
  return activities;
});
