import 'package:flutter/material.dart';
import 'package:seniorpal/models/theme.dart';

final List<ThemeModel> themes = [
  ThemeModel(
    name: 'Patriot',
    themeMode: Mode.dark,
    backgroundGradient: [
      const Color(0xFF3D2821),
      const Color(0xFF1A110A),
    ],
    borderColor: Colors.white,
    backgroundColor: const Color(0xFF1A110A),
    tabBarColor: const Color(0xFFD7CEA3),
    tabBarSelectedItemColor: const Color(0xFF3D2821),
    tabBarUnselectedItemColor: const Color(0xFF1A110A),
    backgroundImage: 'assets/images/eagle.jpg',
    textColor: const Color(0xFFE6E6CC),
  ),
  ThemeModel(
    name: 'Patriot',
    themeMode: Mode.light,
    backgroundGradient: [
      const Color(0xFF0A3061),
      const Color(0xFFB01A43),
    ],
    borderColor: Colors.white,
    backgroundColor: const Color(0xFFB01A43),
    tabBarColor: const Color(0xFF0A3061),
    tabBarSelectedItemColor: Colors.white,
    tabBarUnselectedItemColor: Colors.grey,
    textColor: Colors.white,
    backgroundImage: 'assets/images/flag.jpg',
  ),
  ThemeModel(
    name: 'Fall',
    themeMode: Mode.dark,
    backgroundGradient: [
      const Color(0xFFE8B007),
      const Color(0xFF8A8210),
    ],
    borderColor: const Color(0xFFF8F2E6),
    backgroundColor: const Color(0xFF8A8210),
    tabBarColor: const Color(0xFF4D4A17),
    tabBarSelectedItemColor: const Color(0xFFF8F2E6),
    tabBarUnselectedItemColor: const Color.fromARGB(255, 184, 173, 22),
    textColor: const Color(0xFF4D4A17),
    backgroundImage: 'assets/images/fall2.jpg',
  ),
  ThemeModel(
    name: 'Fall',
    themeMode: Mode.light,
    backgroundGradient: [
      const Color(0xFFE8AB42),
      const Color(0xFFE68724),
    ],
    borderColor: const Color(0xFF04565E),
    backgroundColor: const Color(0xFFE68724),
    tabBarColor: const Color(0xFF04565E),
    tabBarSelectedItemColor: const Color(0xFFE8B007),
    tabBarUnselectedItemColor: const Color(0xFFF7F7F7),
    backgroundImage: 'assets/images/fall.jpg',
    textColor: const Color(0xFFF7F7F7),
  ),
  ThemeModel(
    name: 'Winter',
    themeMode: Mode.dark,
    backgroundGradient: [
      const Color(0xFF526D82),
      const Color(0xFF9EB2BF),
    ],
    borderColor: const Color(0xFF273743),
    backgroundColor: const Color(0xFF526D82),
    tabBarColor: const Color(0xFF273743),
    tabBarSelectedItemColor: Colors.white,
    tabBarUnselectedItemColor: const Color(0xFF9EB2BF),
    backgroundImage: 'assets/images/winter2.jpg',
    textColor: const Color(0xFFDEE6EE),
  ),
  ThemeModel(
    name: 'Winter',
    themeMode: Mode.light,
    backgroundGradient: [
      const Color(0xFFA6D7E8),
      const Color(0xFF566CBA),
    ],
    borderColor: const Color(0xFF0A2447),
    backgroundColor: const Color(0xFF566CBA),
    tabBarColor: const Color(0xFF0A2447),
    tabBarSelectedItemColor: const Color(0xFFA6D7E8),
    tabBarUnselectedItemColor: Colors.grey,
    backgroundImage: 'assets/images/winter.jpg',
    textColor: const Color(0xFF0A2447),
  ),
  ThemeModel(
    name: 'Spring',
    themeMode: Mode.dark,
    backgroundGradient: [
      // const Color(0xFFFFEDD0),
      const Color.fromARGB(255, 111, 41, 70),
      const Color(0xFF181716),
      // const Color(0xFFFFEDD0),
      // const Color(0xFFFFDFCC),
    ],
    borderColor: const Color(0xFFFFEDD0),
    backgroundColor: const Color(0xFF181716), //const Color(0xFFFFEDD0),
    tabBarColor: const Color.fromARGB(255, 251, 126, 159),
    tabBarSelectedItemColor: Colors.white,
    tabBarUnselectedItemColor: const Color(0xFFFFDFCC),
    backgroundImage: 'assets/images/spring2.jpg',
    textColor: const Color.fromARGB(255, 251, 126, 159),
  ),
  ThemeModel(
    name: 'Spring',
    themeMode: Mode.light,
    backgroundGradient: [
      const Color(0xFFF2FDF1),
      const Color(0xFFFFE6E6),
    ],
    borderColor: const Color(0xFFFF99CC),
    backgroundColor: const Color(0xFFFFE6E6),
    tabBarColor: const Color.fromARGB(255, 153, 222, 123),
    tabBarSelectedItemColor: Colors.white,
    tabBarUnselectedItemColor: const Color(0xFFF2FDF1),
    backgroundImage: 'assets/images/spring.jpg',
    textColor: const Color(0xFFFF99CC),
  ),
  // ThemeModel(
  //   name: 'SummerNight',
  //   backgroundGradient: [
  //     Color(0xFFE0E09E),
  //     Color(0xFFF3B59F),
  //   ],
  //   borderColor: Color(0xFFE0646B),
  //   backgroundColor: Color(0xFFE0E09E),
  //   tabBarColor: Color(0xFFBF5A83),
  //   backgroundImage: 'assets/images/summer2.png',
  // ),
  // ThemeModel(
  //   name: 'SummerDay',
  //   backgroundGradient: [
  //     Color(0xFFD1F5C0),
  //     Color(0xFF78E2EC),
  //   ],
  //   borderColor: Color(0xFF98B27F),
  //   backgroundColor: Color(0xFFD1F5C0),
  //   tabBarColor: Color(0xFF99FFDB),
  //   backgroundImage: 'assets/images/summer.png',
  // ),
  // ThemeModel(
  //   name: 'WaterNight',
  //   backgroundGradient: [
  //     Color(0xFF3FFFFF),
  //     Color(0xFF26A0FF),
  //   ],
  //   borderColor: Color(0xFF0D3570),
  //   backgroundColor: Color(0xFF3FFFFF),
  //   tabBarColor: Color(0xFFD6FFCF),
  //   backgroundImage: 'assets/images/water2.png',
  // ),
  // ThemeModel(
  //   name: 'WaterDay',
  //   backgroundGradient: [
  //     Color(0xFFE19899),
  //     Color(0xFFA36589),
  //   ],
  //   borderColor: Color(0xFF421C38),
  //   backgroundColor: Color(0xFFE19899),
  //   tabBarColor: Color(0xFF421C38),
  //   backgroundImage: 'assets/images/water.png',
  // ),
  // ThemeModel(
  //   name: 'FireNight',
  //   backgroundGradient: [
  //     Color(0xFF2B4F4F),
  //     Color(0xFF3D5050),
  //   ],
  //   borderColor: Color(0xFFDBD6C9),
  //   backgroundColor: Color(0xFF2B4F4F),
  //   tabBarColor: Color(0xFFDBD6C9),
  //   backgroundImage: 'assets/images/fire2.png',
  // ),
  // ThemeModel(
  //   name: 'FireDay',
  //   backgroundGradient: [
  //     Color(0xFF506B50),
  //     Color(0xFF385149),
  //   ],
  //   borderColor: Color(0xFFF0EC9D),
  //   backgroundColor: Color(0xFF506B50),
  //   tabBarColor: Color(0xFFAC8C56),
  //   backgroundImage: 'assets/images/fire.png',
  // ),
  // ThemeModel(
  //   name: 'AnimalNight',
  //   backgroundGradient: [
  //     Color(0xFF262929),
  //     Color(0xFF61667A),
  //   ],
  //   borderColor: Color(0xFFD9D9D9),
  //   backgroundColor: Color(0xFF61667A),
  //   tabBarColor: Color(0xFFD9D9D9),
  //   backgroundImage: 'assets/images/animal.png',
  // ),
  // ThemeModel(
  //   name: 'AnimalDay',
  //   backgroundGradient: [
  //     Color(0xFFFBCFA4),
  //     Color(0xFFFFC070),
  //   ],
  //   borderColor: Color(0xFF874A38),
  //   backgroundColor: Color(0xFFFBCFA4),
  //   tabBarColor: Color(0xFF874A38),
  //   backgroundImage: 'assets/images/animal2.png',
  // ),
];
