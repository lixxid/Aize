import 'dart:ui';

import 'package:aize/style/constants.dart';
import 'package:aize/style/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String name;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: displayWidth(context) * 0.09,
          right: displayWidth(context) * 0.09,
          top: displayWidth(context) * 0.05),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Sign-Up',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: kBlack,
                fontSize: displayWidth(context) * 0.06,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: displayHeight(context) * 0.03),
        Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: kBlueInputFillTrans,
                ),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: kBlack,
                        fontSize: displayWidth(context) * 0.036,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Name',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: kBlueInputTextTrans,
                          fontSize: displayWidth(context) * 0.038,
                          fontWeight: FontWeight.w500),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (val) => val.isEmpty ? 'Enter a Name' : null,
                  onChanged: (val) {
                    setState(() => name = val.trim());
                  },
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.027),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: kBlueInputFillTrans,
                ),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: kBlack,
                        fontSize: displayWidth(context) * 0.036,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Username',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: kBlueInputTextTrans,
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w600),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (val) => val.isEmpty ? 'Enter a Username' : null,
                  onChanged: (val) {
                    setState(() => username = val.trim());
                  },
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.027),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: kBlueInputFillTrans,
                ),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: kBlack,
                        fontSize: displayWidth(context) * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'E-mail',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: kBlueInputTextTrans,
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w600),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (val) => val.isEmpty ? 'Enter a E-mail' : null,
                  onChanged: (val) {
                    setState(() => email = val.trim());
                  },
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.027),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: kBlueInputFillTrans,
                ),
                child: TextFormField(
                  obscureText: true,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: kBlack,
                        fontSize: displayWidth(context) * 0.036,
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: kBlueInputTextTrans,
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w600),
                    ),
                    border: InputBorder.none,
                  ),
                  validator: (val) => val.isEmpty ? 'Enter a Password' : null,
                  onChanged: (val) {
                    setState(() => password = val.trim());
                  },
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.04),
              FlatButton(
                onPressed: () {},
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kDarkBlue,
                    ),
                    child: SizedBox(
                      width: displayWidth(context) * 1,
                      height: displayHeight(context) * 0.055,
                      child: Center(
                          child: Text(
                        'Sign-Up',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: displayWidth(context) * 0.036,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}