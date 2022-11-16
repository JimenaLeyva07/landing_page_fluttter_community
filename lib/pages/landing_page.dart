import 'dart:html';

import 'package:flutter/material.dart';
import 'package:landing_page/widgets/desktop/widgets_desktop.dart';
import 'package:landing_page/widgets/mobile/widgets_mobile.dart';

import '../widgets/widget_custom.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final logoMarginRight = width * 0.0034;
    final logoWidth = width * 0.0333;
    final logoMarginLeft = width * 0.06925;
    print(width);

    return Scaffold(
      //backgroundColor: const Color(0x133315F7),
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: logoMarginLeft,
              ),
              Image.asset('assets/logo_aleteo.png', width: logoWidth),
              SizedBox(width: logoMarginRight),
              const Text(
                'aleteo',
                style: TextStyle(
                    color: Color(0xFF727272),
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height < 500
                  ? MediaQuery.of(context).size.height * 1.4
                  : MediaQuery.of(context).size.height < 700
                      ? MediaQuery.of(context).size.height * 1.1
                      : MediaQuery.of(context).size.height - 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(
                        double.infinity,
                        MediaQuery.of(context).size.height < 500
                            ? MediaQuery.of(context).size.height * 0.9
                            : MediaQuery.of(context).size.height < 700
                                ? MediaQuery.of(context).size.height * 0.65
                                : MediaQuery.of(context).size.height * 0.52),
                    painter: WidgetCustom(),
                  ),
                  const ContentWidget(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              color: const Color(0xFF1D1D1B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset('assets/logo_pragma.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 480
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              PresentationWidgetDesktop(),
              SizedBox(height: 100),
              LabelWidgetsDesktop()
            ],
          )
        : Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const PresentationWidgetMobile(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                const LabelWidgetsMobile()
              ],
            ),
          );
  }
}
