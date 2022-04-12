import 'package:flutter/material.dart';
import 'package:portfolio/src/core/assets/assets_routs.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/global_sized_box.dart';
import '../../widgets/image_button.dart';

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
                ),
                const GlobalSizedBox(height: 40),
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
                const GlobalSizedBox(height: 40),
                // const Spacer(),
                // const ImageButton(image: AssetsRoute.git),
                SizedBox(width: 240,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GlobalImageButton(image: AssetsRoute.git, onPressed: ()=> launchURL('https://github.com/mohamadElEaswy'),),
                      // GlobalImageButton(image: AssetsRoute.git, onPressed: ()=> launchURL('https://twitter.com/MEl3easwy'),),
                      GlobalImageButton(image: AssetsRoute.stackOverflow, onPressed: ()=> launchURL('https://twitter.com/MEl3easwy'),),
                      GlobalImageButton(image: AssetsRoute.gmail, onPressed: ()=> launchURL('mailto:muhamadeleaswy535@gmail.com'),),
                      GlobalImageButton(image: AssetsRoute.instagram, onPressed: ()=> launchURL('https://www.instagram.com/el3easwy/'),),
                      GlobalImageButton(image: AssetsRoute.twitter, onPressed: ()=> launchURL('https://twitter.com/MEl3easwy'),),
                      //TODO make call button scenario
                      // GlobalImageButton(image: AssetsRoute.twitter, onPressed: ()=> launchURL('tel:+201063826966'),),
                      //TODO add whatsapp Button
                      //TODO make links constant strings
                    ],
                  ),
                )
              ],
            ),
          ),
          const GlobalSizedBox(width: 40),
          Flexible(
            flex: 2,
            child: Container(
              // width: 400,
              color: Colors.grey,
              child:
                Image.asset(AssetsRoute.person),
            ),
          ),
        ],
      ),
    );
  }
}
launchURL(String url) async {
  if (await canLaunch(url)) {
  await launch(url );
  } else {
    //TODO show snack bar if there is an Error
    throw 'Could not launch $url';
  }
}