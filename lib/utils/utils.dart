import 'package:flutter/cupertino.dart';

double checkScreenSize(BuildContext context){
  if (MediaQuery.of(context).size.width >= 1600) {
    return MediaQuery.of(context).size.width*0.17;
  } else if(MediaQuery.of(context).size.width >= 1280) {
    return MediaQuery.of(context).size.width*0.22;    
  } else if(MediaQuery.of(context).size.width >= 780) {
    return MediaQuery.of(context).size.width*0.35;    
  }  
  return MediaQuery.of(context).size.width*0.5;
}