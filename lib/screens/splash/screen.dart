import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forth_flutter/resources/images.dart';
import 'package:forth_flutter/theme/color_theme.dart';

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Container(
      decoration: BoxDecoration(
        //color: ColorPalette.blueBackground,

        image: DecorationImage(
          colorFilter: ColorFilter.mode(ColorPalette.black, BlendMode.lighten),
          image: AssetImage(Images.firstScreenBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 54),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.27),
              Colors.black.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.firstScreen1),
            ),
          ),
        ),
      ),
    );
  }
}
