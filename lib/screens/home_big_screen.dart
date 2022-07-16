import 'package:flutter/material.dart';
import '../widgets/allVisualBigScreen.dart';


class HomeBigScreen extends StatelessWidget {
  const HomeBigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final photoSize = size.height * 0.45;
    return Scaffold(
       body:AllVisualBigWidget(photoSize: photoSize)
     );
  }
}

