import 'dart:math';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:resumeflutter/utils/contants.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.80,
      color: defaultLight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'I\'m Yash Johri',
                style: defaultBold,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Android and Flutter Developer',
                style: defaultStyleSmall,
              ),
              SizedBox(
                height: 5,
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30,12,30,12),
                  child: Text(
                    'Hire Me',
                    style: defaultButtonStyle,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: defaultYellow,
                    width: 2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.10,
          ),
          Container(
            height: min(size.height * 0.60, size.width * 0.60),
            width: min(size.height * 0.60, size.width * 0.60),
            child: FlareActor(
              'assets/Boy.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "coding",
            ),
          ),
        ],
      ),
    );
  }
}