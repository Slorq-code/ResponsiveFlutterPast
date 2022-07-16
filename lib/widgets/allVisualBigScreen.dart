// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AllVisualBigWidget extends StatelessWidget {
  const AllVisualBigWidget({
    Key? key,
    required this.photoSize,
  }) : super(key: key);
  final double photoSize;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AuthBackgroundBigScreen(
        child: Row(
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
                width: size.width * 0.5,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HeaderPhoto(),
                      CardContainer(
                          child: Column(
                        children: [
                          const SizedBox(height: 0),
                          Text('Johanna Carolina',
                              style: Theme.of(context).textTheme.headline5),
                          const SizedBox(height: 0),
                          Text('Agudelo Ramírez',
                              style: Theme.of(context).textTheme.headline5),
                          const SizedBox(height: 0),
                        ],
                      )),
                    ],
                  ),
                )),
            // ignore: sized_box_for_whitespace
            Container(
                width: size.width * 0.5,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: photoSize + 40),
                      const SizedBox(height: 50),
                      const Icon(Icons.chrome_reader_mode_outlined),
                      const Text(
                        '1070955061',
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      const Icon(Icons.whatsapp),
                      const Text(
                        '+57 322 234 7148',
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      const Icon(Icons.location_on_outlined),
                      const Text(
                        'Calle 20 N° 5-70 Villa Nueva',
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      const Text(
                        'Mosquera, Cundinamarca',
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}







/*
body: Row(
        children: <Widget>[
          Container(
            width: 300,
            height: double.infinity,
            child: AuthBackground(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: photoSize),
                ],
              ),
            )),
          ),
          Container(
            width: 300,
            height: double.infinity,
            child: AuthBackground(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: photoSize),
                  CardContainer(
                      child: Column(
                    children: [
                      const SizedBox(height: 0),
                      Text('Johanna Carolina',
                          style: Theme.of(context).textTheme.headline6),
                      const SizedBox(height: 0),
                      Text('Agudelo Ramírez',
                          style: Theme.of(context).textTheme.headline6),
                      const SizedBox(height: 0),
                    ],
                  )),
                  const SizedBox(height: 50),
                  const Icon(Icons.chrome_reader_mode_outlined),
                  const Text(
                    '1070955061',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  const Icon(Icons.whatsapp),
                  const Text(
                    '+57 322 234 7148',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  const Icon(Icons.location_on_outlined),
                  const Text(
                    'Calle 20 N° 5-70 Villa Nueva',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  const Text(
                    'Mosquera, Cundinamarca',
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            )),
          ),
        ],
      ),
*/