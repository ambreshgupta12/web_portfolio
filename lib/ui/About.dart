import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/CustomFlatbutton.dart';
import 'package:resumeflutter/utils/Title.dart';
import 'package:resumeflutter/utils/contants.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  _launchURL() async {
    const url = 'https://github.com/yash1200?tab=repositories';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.60,
      color: defaultLighter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomTitle(
            text: 'About Me',
            center: false,
          ),
          SizedBox(
            width: size.width * 0.20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: size.width * 0.40,
                child: Text(
                  about,
                  style: defaultStyle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CustomFlatButton(
                    text: 'View Works',
                    onTap: () {
                      _launchURL();
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomFlatButton(
                    text: 'Download CV',
                    onTap: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
