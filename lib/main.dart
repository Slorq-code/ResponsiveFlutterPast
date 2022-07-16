import 'package:flutter/material.dart';

import 'screens/home_big_screen.dart';
import 'screens/home_litle_screen.dart';
import 'screens/home_midle_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Face App',
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          final screenSize = MediaQuery.of(context).size;

          if (screenSize.height < 300) {
            return const HomeLitleScreen();
          }
          if (screenSize.height < 572) {
            return const HomeMidleScreen();
          }
          if (screenSize.width > 610 && screenSize.height > 572) {
            return const HomeBigScreen();
          } else {
            return const HomeScreen();
          }
        },
      ),
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(elevation: 0, color: Colors.lightBlue),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.lightBlue, elevation: 0)),
    );
  }
}
