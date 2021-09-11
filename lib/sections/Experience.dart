import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/models/RecentExperience.dart';
import 'package:web_app/models/RecentWorkExperience.dart';

import '../constants.dart';

class ExperienceSection extends StatefulWidget {
  @override
  _ExperienceSectionState createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          SectionTitle(
            title: "Experience",
            subTitle: "My Work Experience",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Center(
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 1,
                children: List.generate(
                  recentWorksExperiencelist.length,
                      (index) => RecentWorkExperience(index: index, press: () {}),
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
