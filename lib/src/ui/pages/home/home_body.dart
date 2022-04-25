import 'package:flutter/material.dart';
import 'package:portfolio/src/core/assets/assets_routs.dart';
import '../../theme/theme.dart';
import '../../widgets/global_sized_box.dart';
import 'social_media_icons.dart';

const String myCVLink ='https://firebasestorage.googleapis.com/v0/b/portofolio0101.appspot.com/o/Mohamed_cv.pdf?alt=media&token=7cd0c6d8-4f99-44bf-a434-eab4150fe6e4';
    // 'https://drive.google.com/file/d/15AXSYEMqSk1DD6u_8jGsrbwcip1FKRXi/view?usp=sharing';

//TODO make home page body code more simple and easy to read
class BuildHomeBody extends StatelessWidget {
  const BuildHomeBody({Key? key, required this.width}) : super(key: key);

  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(width > 650 ? 80.0 : 20),
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'this website is under development so it\'s not completed yet... '),
                const GlobalSizedBox(),
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
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Hire Me!'),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {
                        launchURL(myCVLink);
                      },
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
