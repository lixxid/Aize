import 'package:aize/authentication/login.dart';
import 'package:aize/authentication/signup.dart';
import 'package:aize/style/constants.dart';
import 'package:aize/style/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticatePage extends StatefulWidget {
  @override
  _AuthenticatePageState createState() => _AuthenticatePageState();
}

class _AuthenticatePageState extends State<AuthenticatePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(children: [
        Container(
          decoration: kGradientBanner,
          height: displayHeight(context) * 0.3,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                SizedBox(
                  height: displayHeight(context) * 0.09,
                  width: displayWidth(context) * 0.16,
                  child: Image(
                    image: AssetImage("assets/images/logo2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),
                Text(
                  'Just a simple group notes app',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: displayWidth(context) * 0.045,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: displayWidth(context) * 0.09,
                      right: displayWidth(context) * 0.09),
                  child: Text(
                      'getting of all the complex work while remaining friendly and simple',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: displayWidth(context) * 0.033,
                            fontWeight: FontWeight.w400),
                      ),
                      textAlign: TextAlign.center),
                ),
              ]),
        ),
        new Container(
          child: new TabBar(
            controller: _controller,
            unselectedLabelColor: kBlueSecondaryTrans,
            labelColor: kBlueSecondary,
            tabs: [
              new Tab(
                text: 'Sign-In',
              ),
              new Tab(
                text: 'Login',
              ),
            ],
          ),
        ),
        Container(
          height: displayHeight(context) * 0.6,
          child: new TabBarView(
            controller: _controller,
            children: [
              new Login(),
              new SignUp(),
            ],
          ),
        ),
      ]),
    );
  }
}

