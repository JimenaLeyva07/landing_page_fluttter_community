import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/widgets/desktop/widgets_desktop.dart';

import '../widgets/widget_custom.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.71111;
    print(width);

    //Appbar
    final logoMarginRight = width * 0.0034;
    final logoMarginLeft = width * 0.06925;
    final logoWidth = clampDouble(width * 0.0333, 48, 50);
    final appbarFontSize = clampDouble(width * 0.01383, 18, 25);
    final appbarHeight = clampDouble(height * 0.08398, 80, 100);

    //Footer
    final footerLogo = width * 0.07778;
    final footerLogoMarginLeft = width * 0.8493;
    final footerLogoMarginRight = width * 0.0729;
    final footerHeight = clampDouble(height * 0.0566, 45, 100);

    //Body
    final textMargin = height * 0.15555;
    final bodyHeight =
        MediaQuery.of(context).size.height - appbarHeight - footerHeight;
    final backgroundCurve = bodyHeight * 0.5975;

    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 21, 247, 0.075),
      appBar: AppBar(
          toolbarHeight: appbarHeight,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: logoMarginLeft,
              ),
              Image.asset('assets/logo_aleteo.png', width: logoWidth),
              SizedBox(width: logoMarginRight),
              Text(
                'aleteo',
                style: TextStyle(
                    color: const Color(0xFF727272),
                    fontSize: appbarFontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height < 500
                //     ? MediaQuery.of(context).size.height * 1.4
                //     : MediaQuery.of(context).size.height < 700
                //         ? MediaQuery.of(context).size.height * 1.1
                //         : MediaQuery.of(context).size.height - 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                          double.infinity,
                          // MediaQuery.of(context).size.height < 500
                          //     ? MediaQuery.of(context).size.height * 0.9
                          //     : MediaQuery.of(context).size.height < 700
                          //         ? MediaQuery.of(context).size.height * 0.65
                          //         : MediaQuery.of(context).size.height * 0.52
                          backgroundCurve),
                      painter: WidgetCustom(),
                    ),
                    const ContentWidget(),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: footerHeight,
              color: const Color(0xFF1D1D1B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: footerLogoMarginLeft,
                        right: footerLogoMarginRight),
                    child: Image.asset('assets/logo_pragma.png',
                        width: footerLogo),
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
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.71111;
    final appbarHeight = clampDouble(height * 0.08398, 80, 100);
    final footerHeight = clampDouble(height * 0.0566, 45, 100);

    final bodyHeight =
        MediaQuery.of(context).size.height - appbarHeight - footerHeight;

    // Body
    final spaceBetween = bodyHeight * 0.0146;

    return Column(
      children: [
        const PresentationWidgetDesktop(),
        SizedBox(height: spaceBetween),
        const LabelWidgetsDesktop()
      ],
    );
  }
}
