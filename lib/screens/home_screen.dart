import 'package:flutter/material.dart';
import '../widgets/allVisual.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final photoSize = size.height * 0.45;
    return Scaffold(
       body: AllVisualWidget(photoSize: photoSize)
     );
  }
}

