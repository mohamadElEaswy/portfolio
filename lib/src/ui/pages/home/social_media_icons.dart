import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/assets/assets_routs.dart';
import '../../../core/const_links/const_links.dart';
import '../../widgets/image_button.dart';

class SocialMediaIconsSection extends StatelessWidget {
  const SocialMediaIconsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            onPressed: () => launchURL(ConstLinks.linkStackoverflow),
            tooltip: 'stackoverflow',
          ),
          GlobalImageButton(
              image: AssetsRoute.gmail,
              onPressed: () => launchURL(ConstLinks.linkSendMail),
              tooltip: 'gmail'),
          GlobalImageButton(
              image: AssetsRoute.instagram,
              onPressed: () => launchURL(ConstLinks.linkInstagram),
              tooltip: 'instagram'),
          GlobalImageButton(
              image: AssetsRoute.twitter,
              onPressed: () => launchURL(ConstLinks.linkTwitter),
              tooltip: 'twitter'),
          GlobalImageButton(
              image: AssetsRoute.whatsapp,
              onPressed: () => launchURL(ConstLinks.linkWhatsapp),
              tooltip: 'whatsapp'),
          GlobalImageButton(
              image: AssetsRoute.telephone,
              onPressed: () => launchURL(ConstLinks.linkMakeCall),
              tooltip: 'make call'),
        ],
      ),
    );
  }
}

launchURL(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
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
