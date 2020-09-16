import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool monVal = true;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSIgnIn(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 30),
              child: Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20.0),
              child: Text(
                'Sign Up!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.0),
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border:
                        new Border.all(color: Colors.grey.shade500, width: 2),
                    borderRadius: new BorderRadius.circular(12.0),
                  ),
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hachem Makaveli',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: -20,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: new Border.all(
                          color: Colors.grey.shade500,
                          width: 2,
                          style: BorderStyle.none),
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'USER NAME',
                        style: TextStyle(
                            fontSize: 12.0,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: UnicornOutlineButton(
                    strokeWidth: 2.5,
                    radius: 15,
                    gradient: LinearGradient(colors: [
                      Color(0xFF94DBE1),
                      Color(0xFF9186B4),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 80,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        'Hachem500@hotmail.com',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  left: 8,
                  top: -20,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: new Border.all(
                          color: Colors.grey.shade500,
                          width: 2,
                          style: BorderStyle.none),
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'EMAIL ADDRESS',
                        style: TextStyle(
                            fontSize: 12.0,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border:
                        new Border.all(color: Colors.grey.shade500, width: 2),
                    borderRadius: new BorderRadius.circular(12.0),
                  ),
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Enter password',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.lock_outline,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: -20,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: new Border.all(
                          color: Colors.grey.shade500,
                          width: 2,
                          style: BorderStyle.none),
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'PASSWORD',
                        style: TextStyle(
                            fontSize: 12.0,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  child: Checkbox(
                    activeColor: Color(0xFF556AE9),
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
                  ),
                ),
                Text(
                  'I accept the policy and terms',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 35.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ], // repeats the gradient over the canvas
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF556AE9),
                        Color(0xFF2A29E8),
                      ],
                      stops: [
                        0.5,
                        1
                      ]),
                ),
                child: FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 9.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/twitterrr.png',
                  height: 32.0,
                  color: Color(0xff185FBD),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Image.asset(
                  'images/google-plus.png',
                  height: 32.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Image.asset(
                  'images/linkedin.png',
                  height: 32.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundSIgnIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path pinkWave = Path();
    var paint2 = Paint()
      ..shader = ui.Gradient.linear(
        // Offset(0.0, 0.3),
        // Offset(size.width, 0.3),
        // [
        //   Color(0xFF7B0B67),
        //   Color(0xFFF20168),
        // ],
        Offset(0.0, size.height * 0.05),
        Offset(size.width, 0.01),
        [
          Color(0xFF556AE9),
          Color(0xFF2A29E8),
        ],
      );
    pinkWave.lineTo(0, size.height * 0.35);
    pinkWave.quadraticBezierTo(size.width * 0.4, size.height * 0.46,
        size.width * 0.65, size.height * 0.25);

    pinkWave.quadraticBezierTo(size.width * 0.72, size.height * 0.169,
        size.width * 0.86, size.height * 0.17);
    // pinkWave.quadraticBezierTo(size.width * 0.86, size.height * 0.16,
    //     size.width * 0.93, size.height * 0.17);
    pinkWave.quadraticBezierTo(size.width * 0.96, size.height * 0.16,
        size.width * 0.97, size.height * 0.12);
    pinkWave.quadraticBezierTo(size.width * 0.96, size.height * 0.062,
        size.width * 0.86, size.height * 0.06);
    pinkWave.quadraticBezierTo(
      size.width * 0.69,
      size.height * 0.08,
      size.width * 0.55,
      size.height * 0.00001,
    );
    pinkWave.lineTo(size.width * 0.5, 0);
    pinkWave.lineTo(0, 0);
    canvas.drawShadow(pinkWave, Colors.grey.withOpacity(0.5), 7.0, true);
    canvas.drawPath(pinkWave, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({
    @required double strokeWidth,
    @required double radius,
    @required Gradient gradient,
    @required Widget child,
    @required VoidCallback onPressed,
  })  : this._painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._child = child,
        this._callback = onPressed,
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints: BoxConstraints(minWidth: 88, minHeight: 48),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {@required double strokeWidth,
      @required double radius,
      @required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
