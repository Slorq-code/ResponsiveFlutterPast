import 'package:flutter/material.dart';
import '../widgets/allVisualMidle.dart';


class HomeMidleScreen extends StatelessWidget {
  const HomeMidleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final photoSize = size.height * 0.45;
    return Scaffold(
       body: AllVisualMidleWidget(photoSize: photoSize)
     );
  }
}

