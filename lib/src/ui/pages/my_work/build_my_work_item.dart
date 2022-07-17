import 'package:flutter/material.dart';
import 'package:portfolio/src/ui/pages/home/social_media_icons.dart';
import '../../theme/theme.dart';

class BuildMyWorkItem extends StatelessWidget {
  const BuildMyWorkItem({
    Key? key,
    required this.projectTitle,
    required this.projectDescription,
    required this.image,
    required this.urlString,
  }) : super(key: key);

  final String projectTitle;
  final String projectDescription;
  final String urlString;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>launchURL(urlString),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.white,
                child: SizedBox(child: Image.asset(image), height: 150),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectTitle,
                    style: MyAppTheme.projectTitleTextTheme,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    projectDescription,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_sharp)
          ],
        ),
      ),
    );
  }
}
