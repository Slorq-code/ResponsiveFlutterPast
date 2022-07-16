import 'package:flutter/material.dart';
import '../widgets/allVisualLitleScreen.dart';


class HomeLitleScreen extends StatelessWidget {
  const HomeLitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final photoSize = size.height * 0.45;
    return Scaffold(
       body: AllVisualLitleWidget(photoSize: photoSize)
     );
  }
}

