import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/assets/assets_routs.dart';
import '../../../core/const_links/const_links.dart';
import '../../widgets/image_button.dart';
import '../home/social_media_icons.dart';

class ContactInformationPage extends StatelessWidget {
  const ContactInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SizedBox(
          width: 450,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('my github :'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                    image: AssetsRoute.git,
                    onPressed: () => launchURL(ConstLinks.linkGithub),
                    tooltip: 'github',
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('my stackoverflow :'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                    image: AssetsRoute.stackOverflow,
                    onPressed: () => launchURL(ConstLinks.linkStackoverflow),
                    tooltip: 'stackoverflow',
                  ),
                ],
              ),
              Wrap(
                children: [
                  const Text('send me an email :'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                      image: AssetsRoute.gmail,
                      onPressed: () => launchURL(ConstLinks.linkSendMail),
                      tooltip: 'gmail'),
                  const SizedBox(width: 20),
                  const Text('or click to copy my email: '),
                  const SizedBox(width: 20),
                  TextButton(
                      onPressed: () {
                        Clipboard.setData(
                          const ClipboardData(
                              text: 'muhamadeleaswy535@gmail.com'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('copied : muhamadeleaswy535@gmail.com'),
                          ),
                        );
                      },
                      child: const Text('copy')),
                ],
              ),
              Row(
                children: [
                  const Text('my instagram:'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                      image: AssetsRoute.instagram,
                      onPressed: () => launchURL(ConstLinks.linkInstagram),
                      tooltip: 'instagram'),
                ],
              ),
              Row(
                children: [
                  const Text('my twitter:'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                      image: AssetsRoute.twitter,
                      onPressed: () => launchURL(ConstLinks.linkTwitter),
                      tooltip: 'twitter'),
                ],
              ),
              Row(
                children: [
                  const Text('contact with me on Whatsapp:'),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                      image: AssetsRoute.whatsapp,
                      onPressed: () => launchURL(ConstLinks.linkWhatsapp),
                      tooltip: 'whatsapp'),
                ],
              ),
              Row(
                children: [
                  const Text('call me: '),
                  const SizedBox(width: 20),
                  GlobalImageButton(
                      image: AssetsRoute.telephone,
                      onPressed: () => launchURL(ConstLinks.linkMakeCall),
                      tooltip: 'make call'),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
