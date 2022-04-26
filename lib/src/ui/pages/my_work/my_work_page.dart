import 'package:flutter/material.dart';
import '../../../core/assets/assets_routs.dart';
import 'build_my_work_item.dart';

const String tmGooglePlay =
    'https://play.google.com/store/apps/details?id=com.edges.tm';
const String socialMediaAppRepo =
    'https://github.com/mohamadElEaswy/social-media-app';
const String googleSignInRepo =
    'https://github.com/mohamadElEaswy/sign-in-with-google';

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
                projectTitle: 'Social Media App',
                projectDescription: 'project Description',
                image: AssetsRoute.git,
                urlString: socialMediaAppRepo,
              ),
               SizedBox(height: 20),
              BuildMyWorkItem(
                projectTitle: 'Shop App',
                projectDescription: 'as a training I developed this ecommerce app',
                image: AssetsRoute.git,
                urlString: 'https://github.com/mohamadElEaswy/ecommerce-Shop-App',
              ),
              SizedBox(height: 20),
              BuildMyWorkItem(
                projectTitle: 'Google Sign in and register',
                projectDescription: 'a simple project to login and register using google',
                image: AssetsRoute.git,
                urlString: googleSignInRepo,
              ),
            ],
          )),
    );
  }
}
