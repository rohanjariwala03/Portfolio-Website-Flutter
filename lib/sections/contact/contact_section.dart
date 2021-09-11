import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/socal_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

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
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/phone.png",
                name: 'Phone Call',
                press: () {
                  customLaunch('tel:+1 438 924 7117');
                },
              ),
              SocalCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'WhatsApp',
                press: () {
                  customLaunch('https://wa.me/14389247117');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocalCard(
                  color: Color(0xFFE8F0F9),
                  iconSrc: "assets/images/messanger.png",
                  name: 'Facebook',
                  press: () {
                    customLaunch('https://www.facebook.com/rohan.jariwala.334');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: SocalCard(
                    color: Color(0xFFE8F0F9),
                    iconSrc: "assets/images/gmail.png",
                    name: 'Email',
                    press: () {
                      customLaunch('mailto:rohanjariwala03@gmail.com?subject=Job%20subject&body=Hello Rohan Jariwala,');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          /*ContactForm(),*/
        ],
      ),
    );
  }
}