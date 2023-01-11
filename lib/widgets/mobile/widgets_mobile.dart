import 'package:flutter/material.dart';

class PresentationWidgetMobile extends StatelessWidget {
  const PresentationWidgetMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const Text('Aleteo Colombia',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.0)),
        const SizedBox(height: 10),
        Image.asset('assets/images/flutter_pajaritos.png',
            width: MediaQuery.of(context).size.width * 0.55),
        const SizedBox(height: 20),
        const Text(
            'Somos una comunidad dedicada a aprender y compartir conocimiento sobre Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 1.25)),
        const SizedBox(height: 10),
        const Text('Thinking in Flutter, creating with Dart',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 1.0)),
      ],
    );
  }
}

class LabelWidgetsMobile extends StatelessWidget {
  const LabelWidgetsMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            'Tu también puedes ser parte de esta comunidad',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF010044),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.25),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/icon_instagram.png'),
              const SizedBox(width: 30),
              Image.asset('assets/images/icon_facebook.png'),
              const SizedBox(width: 30),
              Image.asset('assets/images/icon_tiktok.png')
            ],
          )
        ],
      ),
    );
  }
}
