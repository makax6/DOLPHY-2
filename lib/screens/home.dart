import 'package:dolphy_login/screens/login.dart';
import 'package:dolphy_login/screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'images/logo.png',
              height: 160.0,
            ),
          ),
          Center(
            child: Text(
              'DOLPHY',
              style: TextStyle(
                  color: Color(0xff4F64ED),
                  fontSize: 23.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Center(
            child: Text(
              'APPSTA',
              style: TextStyle(
                  color: Color(0xff4F64ED),
                  fontSize: 18.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              'It\'s easier to sign up now',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0xFFCACCFF),
                  blurRadius: 3,
                  offset: Offset(0.0, 2),
                )
              ],
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              color: Color(0xFF5960FF),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/facebookIcon.png',
                    color: Colors.white,
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Continue with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border.all(color: Colors.grey.shade500, width: 2),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            child: FlatButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'I\'ll use email or phone',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.black87),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xff185FBD),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
