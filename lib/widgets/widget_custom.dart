import 'package:flutter/material.dart';

class WidgetCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
  var rect = Offset.zero & size;
           
  Path path = Path();
  path.moveTo(size.width*0.6011118,size.height*0.9384991);
  path.cubicTo(size.width*0.3348174,size.height*1.117311,size.width*0.08617361,size.height*0.8639924,size.width*-0.004861111,size.height*0.7149829);
  path.lineTo(size.width*-0.004861111,0);
  path.lineTo(size.width*1.003472,0);
  path.lineTo(size.width*1.003472,size.height*0.7149829);
  path.cubicTo(size.width*0.9803056,size.height*0.7149829,size.width*0.8674097,size.height*0.7596850,size.width*0.6011118,size.height*0.9384991);
  path.close();

  Paint paintFill = Paint()..style=PaintingStyle.fill;
  paintFill.shader = const LinearGradient(stops:[-0.0146,0.25,1.11], colors: [Color(0xFFF409FD),Color(0xFF9C0EFA),Color(0xFF3315F7)]).createShader(rect);
  canvas.drawPath(path,paintFill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
  }
}