import 'package:flutter/material.dart';
import '../../../core/assets/assets_routs.dart';
import 'build_my_work_item.dart';

const String tmGooglePlay =
    'https://play.google.com/store/apps/details?id=com.edges.tm';
const String socialMediaRepo =
    'https://github.com/mohamadElEaswy/social-media-app';

class MyWorkPage extends StatelessWidget {
  const MyWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My work'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(80),
          child: Column(
            children: const [
              BuildMyWorkItem(
                projectTitle:
                    'TM Middle East for medical supplies and general trading',
                projectDescription:
                    'Mobile Application to view the products like a catalog, and to make orders.',
                image: AssetsRoute.tm,
                urlString: tmGooglePlay,
              ),
               SizedBox(height: 20),
              BuildMyWorkItem(
                projectTitle: 'chatting app',
                projectDescription: 'project Description',
                image: AssetsRoute.git,
                urlString: socialMediaRepo,
              ),
               SizedBox(height: 20),
              BuildMyWorkItem(
                projectTitle: 'chatting app',
                projectDescription: 'project Description',
                image: AssetsRoute.git,
                urlString: '',
              ),
            ],
          )),
    );
  }
}
