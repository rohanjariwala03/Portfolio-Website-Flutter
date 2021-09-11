import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/models/RecentWork.dart';

import '../../../constants.dart';
import 'RecentExperience.dart';

class RecentWorkExperience extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkExperience({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkExperienceState createState() => _RecentWorkExperienceState();
}

class _RecentWorkExperienceState extends State<RecentWorkExperience> {
  bool isHover = false;

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("Error $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 300,
        width: 840,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
       /* child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),*/
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          recentWorksExperiencelist[widget.index].company.toUpperCase()
                              + "                                                      "
                              + recentWorksExperiencelist[widget.index].workstart.toUpperCase()
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        recentWorksExperiencelist[widget.index].position,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text("\u2022 " +
                        recentWorksExperiencelist[widget.index].description1,
                      ),
                      Text("\u2022 " +
                        recentWorksExperiencelist[widget.index].description2,
                      ),
                      Text("\u2022 " +
                        recentWorksExperiencelist[widget.index].description3,
                      ),
                      Text("\u2022 " +
                        recentWorksExperiencelist[widget.index].description4,
                      ),
                      Text("\u2022 " +
                        recentWorksExperiencelist[widget.index].description5,
                      ),
                    ],
                  ),
                ),
              ),
           /* ),
          ],
        ),
      ),*/
    );
  }
}
