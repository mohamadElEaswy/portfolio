import 'package:flutter/material.dart';

class BuildHomeBody extends StatelessWidget {
  const BuildHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Mohamed Easwy Flutter Developer'),
                Text(
                  'Specialized in creating Mobile Applications, android, ios, using Flutter framework and Dart.Specialized in creating Mobile Applications, android, ios, using Flutter framework and Dart.',
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              // width: 400,
              color: Colors.grey,
              child: const Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
