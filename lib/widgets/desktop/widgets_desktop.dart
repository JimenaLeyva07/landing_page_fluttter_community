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

    //Image
    final flutterImageWidth = width * 0.35525;
    final flutterImageHeight = height * 0.435;

    //Padding
    //final paddingMargin = width

    return width > 600
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PresentationTextWidget(),
              Image.asset('assets/flutter_pajaritos.png',
                  width: flutterImageWidth, height: flutterImageHeight)
            ],
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/flutter_pajaritos.png',
                    width: flutterImageWidth, height: flutterImageHeight),
                const PresentationTextWidget()
              ],
            ),
          );
  }
}

class PresentationTextWidget extends StatelessWidget {
  const PresentationTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.71111;

    //Text Size
    final sizeboxTextSize = clampDouble(width * 0.22986, 320, 370);
    final titleSize = clampDouble(width * 0.0361, 40, 52);
    final bodyTextSize = clampDouble(width * 0.015277, 20, 30);
    final thinkingTextSize = clampDouble(width * 0.0125, 15, 18);

    //Text Interlineado
    final interlineadoTitle = clampDouble(height * 0.0007, 1.0, 1.5);
    final interlineadoBodyText = clampDouble(height * 0.0011, 1.0, 1.3);
    final spaceBetweenText = height * 0.02;

    return SizedBox(
      width: sizeboxTextSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Aleteo \nColombia',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: interlineadoTitle)),
          SizedBox(height: spaceBetweenText),
          Text(
              'Somos una comunidad dedicada a aprender y compartir conocimiento sobre Flutter.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: bodyTextSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  height: interlineadoBodyText)),
          SizedBox(height: spaceBetweenText),
          Text('Thinking in Flutter, creating with Dart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: thinkingTextSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300)),
        ],
      ),
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

    //Text
    final comunidadText = clampDouble(width * 0.02152, 20, 35);
    final sizeboxComunidadSize = clampDouble(width * 0.31597, 300, 520);
    final comunidadTextInterlineado = clampDouble(height * 0.0009, 1.0, 1.5);

    //Social text & icons
    final socialLogos = clampDouble(width * 0.0375, 40, 55);
    final socialMargin = width * 0.0215;

    return SizedBox(
      width: sizeboxComunidadSize,
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
                height: comunidadTextInterlineado),
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
