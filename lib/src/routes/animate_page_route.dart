/**
 * @author [Tilak]
 * @email [tpymca@gmail.com]
 * @create date 2019-10-28 12:14:39
 * @modify date 2019-10-28 12:14:39
 * @desc [Route animation class to open a page with animation from right to left]
 */
import 'package:flutter/cupertino.dart';

class AnimateRouteRightToLeft {
  static Route animatePageRightToLeft({rootWidget}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => rootWidget(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset(0.0, 0.0);
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);
        
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      }
    );
  }
}