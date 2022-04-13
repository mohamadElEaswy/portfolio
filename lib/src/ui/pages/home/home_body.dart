import 'package:flutter/material.dart';
import 'package:portfolio/src/core/assets/assets_routs.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/const_links/const_links.dart';
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
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GlobalImageButton(
                        image: AssetsRoute.git,
                        onPressed: () => launchURL(ConstLinks.linkGithub),
                        tooltip: 'github',
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.stackOverflow,
                        onPressed: () =>
                            launchURL(ConstLinks.linkStackoverflow),tooltip: 'stackoverflow',
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.gmail,
                        onPressed: () => launchURL(ConstLinks.linkSendMail),tooltip: 'gmail'
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.instagram,
                        onPressed: () => launchURL(ConstLinks.linkInstagram),tooltip: 'instagram'
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.twitter,
                        onPressed: () => launchURL(ConstLinks.linkTwitter),tooltip: 'twitter'
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.whatsapp,
                        onPressed: () => launchURL(ConstLinks.linkWhatsapp),tooltip: 'whatsapp'
                      ),
                      GlobalImageButton(
                        image: AssetsRoute.telephone,
                        onPressed: () => launchURL(ConstLinks.linkMakeCall),tooltip: 'make call'
                      ),
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
              child: Image.asset(AssetsRoute.person),
            ),
          ),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    //TODO show snack bar if there is an Error
    throw 'Could not launch $url';
  }
}
// ScaffoldMessenger.of(context).showSnackBar(snackBar);
// final snackBar = SnackBar(
//   content: const Text('Yay! A SnackBar!'),
//   action: SnackBarAction(
//     label: 'Undo',
//     onPressed: () {
//       // Some code to undo the change.
//     },
//   ),
// );
