/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-28 12:14:08
 * @modify date 2019-10-28 12:14:08
 * @desc [A class helper to navigate in the app]
 */
import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/src/pages/Home/Home.dart';
import 'package:flutter_starter_kit/src/routes/animate_page_route.dart';

/// this is the helper function for route animation and provide widget to 
/// move from one point to another in app with animation
class NavigatorHelper {
  static void navigateToHomePage(BuildContext context, {bool addToStack = false}) {
    if (addToStack) {
      AnimateRouteRightToLeft.animatePageRightToLeft(
        rootWidget: (context) => Home()
      );
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home()
      ));
    }
  }
}