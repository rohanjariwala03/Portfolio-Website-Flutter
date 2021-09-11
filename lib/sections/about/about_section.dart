import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("Error $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "To forge a profession that enhances my abilities and aids in the development of my academic competency by providing me with experience and exposure that benefits the organisation.",
                ),
              ),
              ExperienceCard(numOfExp: "01"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Computer science graduate with a Mobile Application & Development Course from Cegep de la Gaspesie et des Iles and got GPA 3.7/4.3. I'm excited to work with you as a junior Java developer on a game-changing programme. TechDeveloper provided me seven-months Software developer experience.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                  customLaunch('mailto:rohanjariwala03@gmail.com?subject=Job%20subject&body=Hello Rohan Jariwala,');
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              /*DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
