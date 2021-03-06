import 'package:flutter/material.dart';
import 'food/food_detail.dart';
import 'walk/walk_detail.dart';
import 'weight/weight_detail.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../frontend_settings.dart';
// import 'chart_dammy_data.dart';
import '../get_allPetsData.dart';
import 'dart:developer';
import '../Dashboard/memo/memo.dart';


var accentBlue = NeumorphicCardSettings.accentBlue;
var accentPink = NeumorphicCardSettings.accentPink;
var accentYellow = NeumorphicCardSettings.accentYellow;
var intensity = NeumorphicCardSettings.intensity;
var depth = NeumorphicCardSettings.depth;
var surfaceIntensity = NeumorphicCardSettings.surfaceIntensity;
List<dynamic> allChartData = allPetsData;

_nextPage(icon, heading, textColor) {
  if (heading == 'Memo') return MemoList();
  if (heading == 'Walk') return Walk(icon, heading, textColor);
  if (heading == 'Food')
    return FoodDetail(icon, heading, textColor, allChartData);
  if (heading == 'Weight')
    return WeightDetail(icon, heading, textColor, allChartData);
}

class JumpCard extends StatefulWidget {
  IconData icon;
  String heading;
  int textColor;
  int materialColor;
  double intensity;
  double depth;
  double surfaceIntensity;
  int baseColor;

  JumpCard(
    IconData icon,
    String heading,
    int textColor,
    int materialColor,
    double intensity,
    double depth,
    double surfaceIntensity,
    int baseColor,
  ) {
    this.icon = icon;
    this.heading = heading;
    this.textColor = textColor;
    this.materialColor = materialColor;
    this.intensity = intensity;
    this.depth = depth;
    this.surfaceIntensity = surfaceIntensity;
    this.baseColor = baseColor;
  }

  @override
  State<StatefulWidget> createState() {
    return CustomCardState(
      icon,
      heading,
      textColor,
      materialColor,
      intensity,
      depth,
      surfaceIntensity,
      baseColor,
    );
  }
}

class CustomCardState extends State<JumpCard> {
  IconData icon;
  String heading;
  int textColor;
  int materialColor;
  double intensity;
  double depth;
  double surfaceIntensity;
  int baseColor;

  var _hasPadding = false;

  CustomCardState(
      IconData icon,
      String heading,
      int textColor,
      int materialColor,
      double intensity,
      double depth,
      double surfaceIntensity,
      int baseColor) {
    this.icon = icon;
    this.heading = heading;
    this.textColor = textColor;
    this.materialColor = materialColor;
    this.intensity = intensity;
    this.depth = depth;
    this.surfaceIntensity = surfaceIntensity;
    this.baseColor = baseColor;
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heading,
      child: Material(
        type: MaterialType.transparency,
        child: content(),
      ),
    );
  }

  Widget content() {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 80),
      padding: EdgeInsets.all(_hasPadding ? 10 : 0),
      child: GestureDetector(
        onTapDown: (TapDownDetails downDetails) {
          setState(() {
            _hasPadding = true;
          });
        },
        onTap: () {
          log('data: $allChartData');
          print('Card tapped.');
          setState(() {
            _hasPadding = false;
          });
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (_, __, ___) =>
                    _nextPage(icon, heading, textColor),
              ));
        },
        onTapCancel: () {
          setState(() {
            _hasPadding = false;
          });
        },
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              surfaceIntensity: surfaceIntensity,
              depth: depth,
              intensity: intensity,
              lightSource: LightSource.topLeft,
              color: Color(baseColor)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //text
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              heading,
                              style: TextStyle(
                                color: Color(textColor),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          //icon
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Material(
                              color: Color(materialColor),
                              borderRadius: BorderRadius.circular(16),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Stack(
                                  children: <Widget>[
                                    // Positioned(
                                    //   right: 0.5,
                                    //   top: 8.0,
                                    //   child: Icon(icon, color: Colors.grey),
                                    // ),
                                    Icon(
                                      icon,
                                      color: Colors.grey[100],
                                      size: 23.3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
