// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AllVisualLitleWidget extends StatelessWidget {
  const AllVisualLitleWidget({
    Key? key,
    required this.photoSize,
  }) : super(key: key);

  final double photoSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AuthBackgroundMidleScreen(
        child: Row(
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
                width: size.width * 0.5,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(height: size.height * 0.1),
                      const HeaderPhoto(),
                    ],
                  ),
                )),
            // ignore: sized_box_for_whitespace
            Container(
                width: size.width * 0.4,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.1),
                      Text('Johanna  ',
                          style: Theme.of(context).textTheme.headline6),
                      Text('Agudelo  ',
                          style: Theme.of(context).textTheme.headline6),
                      SizedBox(height: size.height * 0.1),
                      const Icon(Icons.whatsapp),
                      const Text(
                        '+57 322 234 7148',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
