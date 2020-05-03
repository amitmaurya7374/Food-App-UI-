import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc4747),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //thhis row is for icons
                children: <Widget>[
                  Image.asset(
                    'assets/images/bun.png',
                    width: 104,
                    height: 56,
                    color: Color(0xffdb3e3e),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'assets/images/burger.png',
                    width: 108,
                    height: 80,
                    color: Color(0xffdb3e3e),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signIn');
                    },
                    child: Text(
                      'SIGN IN',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(22.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    icon: FaIcon(
                      FontAwesomeIcons.user,
                      color: Colors.white,
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(22.0),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    icon: FaIcon(
                      FontAwesomeIcons.key,
                      color: Colors.white,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/bowl.png',
                    color: Color(0xffdb3e3e),
                  ),
                  FlatButton(
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.white,
                    )),
                onPressed: () {},
                color: Color(0xfffc4747),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/images/vegbowl.png',
                    color: Color(0xffdb3e3e),
                  ),
                  SizedBox(
                    width: 58,
                  ),
                  Text(
                    'or SignIn with',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: 'facebook button',
                    elevation: 6.0,
                    onPressed: () {},
                    backgroundColor: Color(0xfffc4747),
                    child: Image.asset(
                      'assets/images/facebook_logo.png',
                      height: 28.0,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 4.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    heroTag: 'gmail button',
                    elevation: 6.0,
                    onPressed: () {},
                    backgroundColor: Color(0xfffc4747),
                    child: Image.asset(
                      'assets/images/mail.png',
                      height: 28.0,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 4.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/hot_food.png',
                  height: 83,
                  width: 95,
                  color: Color(0xffd93d3d),
                  // alignment: Alignment.bottomRight,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Cheese.png',
                  height: 83,
                  width: 95,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Need Help?',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xfff4f4f4),
                        letterSpacing: 0.4,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
