import 'package:flutter/material.dart';
import 'package:portfolio/src/core/assets/assets_routs.dart';
import '../../theme/theme.dart';
import '../../widgets/global_sized_box.dart';
import 'social_media_icons.dart';

//TODO make home page body code more simple and easy to read
class BuildHomeBody extends StatelessWidget {
  const BuildHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Mohamed Easwy Flutter Developer',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueAccent,
                  ),
                ),
                const GlobalSizedBox(),
                const Text(
                  'Specialized in creating Mobile Applications, android, ios, using Flutter framework and Dart.Specialized in creating Mobile Applications, android, ios, using Flutter framework and Dart.',
                  overflow: TextOverflow.clip,
                  style: MyAppTheme.greyBodyText,
                ),
                const GlobalSizedBox(height: 40),
                Row(
                  children: [
                    ElevatedButton(onPressed: () {},
                      child: const Text('Hire Me!'),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                      ),),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Download C.V'),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                      ),
                    ),

                  ],
                ),

                const GlobalSizedBox(height: 40),
                // const Spacer(),
                // const ImageButton(image: AssetsRoute.git),
                const SocialMediaIconsSection(),
              ],
            ),
          ),
          const GlobalSizedBox(width: 40),
          Flexible(
            flex: 2,
            child: Container(
              // width: 400,
              color: Colors.grey,
              child: Image.asset(AssetsRoute.person),
            ),
          ),
        ],
      ),
    );
  }
}

