import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PresentationWidgetDesktop extends StatelessWidget {
  const PresentationWidgetDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.71111;
    print(height);

    //Text
    final sizeboxAllTexts = width * 0.22986;
    final aleteoTitle = clampDouble(width * 0.0361, 40, 52);
    final communityText = width * 0.015278;
    final thinkingText = width * 0.0125;
    final textSpaceLines = height * 0.0007;
    final bodytextSpaceLine = height * 0.0009;
    final spaceBetweenText = height * 0.02;

    //Image
    final flutterImage = width * 0.35525;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: sizeboxAllTexts,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Aleteo \nColombia',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: aleteoTitle,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: textSpaceLines)),
              SizedBox(height: spaceBetweenText),
              Text(
                  'Somos una comunidad dedicada a aprender y compartir conocimiento sobre Flutter.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: communityText,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: bodytextSpaceLine)),
              SizedBox(height: spaceBetweenText),
              Text('Thinking in Flutter, creating with Dart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: thinkingText,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300)),
            ],
          ),
        ),
        Image.asset('assets/flutter_pajaritos.png', width: flutterImage)
      ],
    );
  }
}

class LabelWidgetsDesktop extends StatelessWidget {
  const LabelWidgetsDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.71111;

    final comunidadText = width * 0.02152;
    final comunidadTextMargin = width * 0.31597;
    final comunidadTextSpaceLine = height * 0.0009;

    final socialLogos = width * 0.0375;
    final socialMargin = width * 0.0215;

    return SizedBox(
      width: comunidadTextMargin,
      // width: MediaQuery.of(context).size.width >= 1200
      //     ? MediaQuery.of(context).size.width * 0.30
      //     : MediaQuery.of(context).size.width * 0.60,
      child: Column(
        children: [
          Text(
            'Tu también puedes ser parte de esta comunidad',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color(0xFF010044),
                fontSize: comunidadText,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: comunidadTextSpaceLine),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon_instagram.png', width: socialLogos),
              SizedBox(width: socialMargin),
              Image.asset('assets/icon_facebook.png', width: socialLogos),
              SizedBox(width: socialMargin),
              Image.asset('assets/icon_tiktok.png', width: socialLogos)
            ],
          )
        ],
      ),
    );
  }
}
