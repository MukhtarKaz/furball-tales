import 'package:flutter/material.dart';
import '../app_bar.dart';
import '../frontend_settings.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

var baseColor = NeumorphicCardSettings.baseColor;
var accentBlue = NeumorphicCardSettings.accentBlue;
var accentPink = NeumorphicCardSettings.accentPink;
var accentYellow = NeumorphicCardSettings.accentYellow;
var accentGold = NeumorphicCardSettings.accentGold;

var textBaseColor = NeumorphicCardSettings.textBaseColor;

class ProjectDet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
        backgroundColor: Color(baseColor),
        appBar: GradientAppBar(
          "Our Project",
          'back',
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 25, right: 25, bottom: 24),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mission_ship.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: NeumorphicText(
                          "Our Vision",
                          style: NeumorphicStyle(
                            depth: 4, //customize depth here
                            color: Color(accentGold), //customize color here
                          ),
                          textStyle: NeumorphicTextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold //customize size here
                              // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 16.0, bottom: 16.0),
                            width: c_width,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Becoming a leading and lasting company in the pet app industry.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(textBaseColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: NeumorphicText(
                          "Our Mission",
                          style: NeumorphicStyle(
                            depth: 4, //customize depth here
                            color: Color(accentGold), //customize color here
                          ),
                          textStyle: NeumorphicTextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold //customize size here
                              // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 16.0, bottom: 16.0),
                            width: c_width,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Strengthening the bond of owners and pets, more than ever.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(textBaseColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: NeumorphicText(
                          "Our Value",
                          style: NeumorphicStyle(
                            depth: 4, //customize depth here
                            color: Color(accentGold), //customize color here
                          ),
                          textStyle: NeumorphicTextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold //customize size here
                              // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 16.0, bottom: 16.0),
                            width: c_width,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Text(
                                    "- Communicate and share everything as a lasting team.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(textBaseColor),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Text(
                                    "- Tackle and accomplish anything, even if it seems challenging.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(textBaseColor),
                                    ),
                                  ),
                                ),
                                Text(
                                  "- Make full use of the latest updates in design and innovation.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(textBaseColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 2.0),
                            child: NeumorphicText(
                              "Our Product",
                              style: NeumorphicStyle(
                                depth: 4, //customize depth here
                                color: Color(accentGold), //customize color here
                              ),
                              textStyle: NeumorphicTextStyle(
                                  fontSize: 27,
                                  fontWeight:
                                      FontWeight.bold //customize size here
                                  // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 25, right: 25, bottom: 12),
                            child: Container(
                              height: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 16.0, bottom: 16.0),
                            width: c_width,
                            child: Text(
                              "Our app Furball Tales manages all of the medical information for your pet. That includes Calendar events, food tracking, various measurements like weight, walk details, and of course, vaccinations. You can also leave memos and get reminders for upcoming vet appointments. It keeps track of this stuff so you don’t have to. The app is also completely free with no in-app purchases or ads.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(textBaseColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
