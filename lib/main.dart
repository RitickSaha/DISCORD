import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialTheme(),
  );
}

class MaterialTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discord',
      home: Expanded(
        child: Container(
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            gradient: LinearGradient(
                colors: [Color(0xFF280684), Color(0xFF21BDB8)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: CustomPaint(
                size: Size(500.0, 500.0),
                painter: DiscordLogo(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DiscordLogo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint white = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path body = Path();
    body.moveTo(size.width * 0.39, size.height * 0.12);
    body.quadraticBezierTo(size.width * 0.28, size.height * 0.13,
        size.width * 0.19, size.height * 0.19);
    body.cubicTo(size.width * 0.13, size.height * 0.30, size.width * 0.08,
        size.height * 0.50, size.width * 0.09, size.height * 0.61);
    body.quadraticBezierTo(size.width * 0.18, size.height * 0.72,
        size.width * 0.30, size.height * 0.72);
    body.lineTo(size.width * 0.35, size.height * 0.66);
    body.quadraticBezierTo(size.width * 0.25, size.height * 0.62,
        size.width * 0.23, size.height * 0.58);
    body.quadraticBezierTo(size.width * 0.35, size.height * 0.65,
        size.width * 0.50, size.height * 0.66);
    body.quadraticBezierTo(size.width * 0.63, size.height * 0.66,
        size.width * 0.78, size.height * 0.58);
    body.quadraticBezierTo(size.width * 0.76, size.height * 0.62,
        size.width * 0.66, size.height * 0.66);
    body.quadraticBezierTo(size.width * 0.69, size.height * 0.71,
        size.width * 0.70, size.height * 0.72);
    body.quadraticBezierTo(size.width * 0.86, size.height * 0.71,
        size.width * 0.92, size.height * 0.61);
    body.quadraticBezierTo(size.width * 0.92, size.height * 0.38,
        size.width * 0.82, size.height * 0.20);
    body.quadraticBezierTo(size.width * 0.75, size.height * 0.14,
        size.width * 0.62, size.height * 0.12);
    body.lineTo(size.width * 0.61, size.height * 0.13);
    body.quadraticBezierTo(size.width * 0.76, size.height * 0.19,
        size.width * 0.78, size.height * 0.22);
    body.quadraticBezierTo(size.width * 0.67, size.height * 0.15,
        size.width * 0.50, size.height * 0.15);
    body.quadraticBezierTo(size.width * 0.36, size.height * 0.15,
        size.width * 0.21, size.height * 0.22);
    body.quadraticBezierTo(size.width * 0.28, size.height * 0.16,
        size.width * 0.40, size.height * 0.13);
    body.lineTo(size.width * 0.39, size.height * 0.12);
    body.close();
    Paint shadowPaintLeft = new Paint()
      ..color = Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    shadowPaintLeft.shader = ui.Gradient.linear(
        Offset(size.width * 0.66, size.height * 0.65),
        Offset(size.width * 0.79, size.height * 0.57),
        [Color(0xff918e8e), Color(0x00ffffff)],
        [0.00, 1.00]);

    Path eye1 = Path();
    eye1.moveTo(size.width * 0.37, size.height * 0.38);
    eye1.cubicTo(size.width * 0.40, size.height * 0.39, size.width * 0.44,
        size.height * 0.41, size.width * 0.44, size.height * 0.47);
    eye1.cubicTo(size.width * 0.44, size.height * 0.50, size.width * 0.42,
        size.height * 0.54, size.width * 0.37, size.height * 0.54);
    eye1.cubicTo(size.width * 0.34, size.height * 0.54, size.width * 0.30,
        size.height * 0.52, size.width * 0.30, size.height * 0.46);
    eye1.cubicTo(size.width * 0.30, size.height * 0.43, size.width * 0.33,
        size.height * 0.39, size.width * 0.37, size.height * 0.38);
    eye1.close();

    Path eye2 = Path();
    eye2.moveTo(size.width * 0.63, size.height * 0.39);
    eye2.cubicTo(size.width * 0.67, size.height * 0.39, size.width * 0.70,
        size.height * 0.42, size.width * 0.70, size.height * 0.47);
    eye2.cubicTo(size.width * 0.70, size.height * 0.51, size.width * 0.67,
        size.height * 0.54, size.width * 0.63, size.height * 0.54);
    eye2.cubicTo(size.width * 0.59, size.height * 0.54, size.width * 0.56,
        size.height * 0.50, size.width * 0.56, size.height * 0.46);
    eye2.cubicTo(size.width * 0.56, size.height * 0.42, size.width * 0.59,
        size.height * 0.39, size.width * 0.63, size.height * 0.39);
    eye2.close();
    canvas.drawPath(
        Path.combine(PathOperation.difference, body,
            Path.combine(PathOperation.union, eye1, eye2)),
        white);
    Path shadowLeft = Path();
    shadowLeft.moveTo(size.width * 0.78, size.height * 0.57);
    shadowLeft.quadraticBezierTo(size.width * 0.76, size.height * 0.62,
        size.width * 0.66, size.height * 0.66);
    shadowLeft.cubicTo(size.width * 0.67, size.height * 0.68, size.width * 0.69,
        size.height * 0.71, size.width * 0.70, size.height * 0.72);
    shadowLeft.quadraticBezierTo(size.width * 0.85, size.height * 0.71,
        size.width * 0.92, size.height * 0.61);
    shadowLeft.lineTo(size.width * 0.78, size.height * 0.57);
    shadowLeft.close();

    canvas.drawPath(shadowLeft, shadowPaintLeft);

    Paint shadowPaintRight = new Paint()
      ..color = Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    shadowPaintRight.shader = ui.Gradient.linear(
        Offset(size.width * 0.35, size.height * 0.72),
        Offset(size.width * 0.16, size.height * 0.65),
        [Color(0xff918e8e), Color(0x00ffffff)],
        [0.00, 1.00]);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.23, size.height * 0.58);
    path_1.quadraticBezierTo(size.width * 0.25, size.height * 0.62,
        size.width * 0.35, size.height * 0.66);
    path_1.cubicTo(size.width * 0.34, size.height * 0.67, size.width * 0.32,
        size.height * 0.70, size.width * 0.31, size.height * 0.72);
    path_1.quadraticBezierTo(size.width * 0.22, size.height * 0.72,
        size.width * 0.16, size.height * 0.68);
    path_1.lineTo(size.width * 0.23, size.height * 0.58);
    path_1.close();
    canvas.drawPath(path_1, shadowPaintRight);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
