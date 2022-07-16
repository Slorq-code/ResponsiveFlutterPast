// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AllVisualWidget extends StatelessWidget {
  const AllVisualWidget({
    Key? key,
    required this.photoSize,
  }) : super(key: key);

  final double photoSize;

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
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
                )
              ),
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
      )
    );
  }
}