
import 'package:flutter/material.dart';
import 'package:landing_page/utils/utils.dart';

class PresentationWidgetDesktop extends StatelessWidget {
  const PresentationWidgetDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: checkScreenSize(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Aleteo \nColombia', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 45, 
                fontFamily: 'Poppins', 
                fontWeight: FontWeight.w600, 
                height: 1.0
                )
              ),
              SizedBox(height: 20),
              Text('Somos una comunidad dedicada a aprender y compartir conocimiento sobre Flutter.', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 22, 
                fontFamily: 'Poppins', 
                fontWeight: FontWeight.w300, 
                height: 1.25
                )
              ),
              SizedBox(height: 20),
              Text('Thinking in Flutter, creating with Dart', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 18, 
                fontFamily: 'Poppins', 
                fontWeight: FontWeight.w300, 
                height: 1.0
                )
              ),
            ],
          ),
        ),                                
        Image.asset('assets/flutter_pajaritos.png', width: MediaQuery.of(context).size.width*0.25)
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
    return SizedBox(
      width: MediaQuery.of(context).size.width >= 1200 ? MediaQuery.of(context).size.width*0.30 : MediaQuery.of(context).size.width*0.60,
      child: Column(                                                                  
        children: [
          const Text('Tu también puedes ser parte de esta comunidad', 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF010044),
            fontSize: 30, 
            fontFamily: 'Poppins', 
            fontWeight: FontWeight.w600,
            height: 1.25
            ),                          
          ), 
                   
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon_instagram.png'),
              SizedBox(width: MediaQuery.of(context).size.width*0.02),
              Image.asset('assets/icon_facebook.png'),
              SizedBox(width: MediaQuery.of(context).size.width*0.02),
              Image.asset('assets/icon_tiktok.png')
            ],            
          )        
        ],
      ),
    );
  }
}
