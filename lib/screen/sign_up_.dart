import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_login/screen/sign_up_.dart';

import 'login_page.dart';

class Sign_Up_Page extends StatefulWidget {
  const Sign_Up_Page({Key? key}) : super(key: key);

  @override
  _Sign_Up_PageState createState() => _Sign_Up_PageState();
}

class _Sign_Up_PageState extends State<Sign_Up_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 40),
                      width: 60,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xffCCCEDD),
                          borderRadius: BorderRadius.only(
                            //  bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(80),
                            topRight: Radius.circular(80),
                            // topLeft: Radius.circular(100)
                          ),
                          border: Border.all(
                              width: 1,
                              color: Colors.green,
                              style: BorderStyle.none)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 50,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Color(0xff27316F),
                          borderRadius: BorderRadius.only(
                            //  bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(80),
                            //  topLeft: Radius.circular(80)
                          ),
                          border: Border.all(
                              width: 1,
                              color: Colors.green,
                              style: BorderStyle.none)),
                    ),
                  ),
                ),
              ],
            ),

            // code for lognin page
            Container(
              margin: EdgeInsets.fromLTRB(0, 25, 20, 0),
              height: 500,
              //MediaQuery.of(context).size.height*50,
              width: double.infinity,
              child: Card(
                color: Color(0xffEEEEEE),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 35, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          fontFamily: 'sf-pro-display-cufonfonts',
                        ),
                      ),

                      //TextField for name
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 38),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              //labelText: 'Username',

                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'Mark Garnier',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),

                      //code for email id
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              //labelText: 'Username',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              hintText: 'Mail id',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),

                      // code for mobile number
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              //labelText: 'Username',

                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.black,
                              ),
                              hintText: 'Mobile Number',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),

                      //TextField for Password
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              //labelText: '  Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),

                      //ElevatedButton for Sign UP
                      Container(
                        margin: EdgeInsets.only(top: 35, right: 20),
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    side:
                                        BorderSide(color: Color(0xff27316F)))),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff27316F)),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context, MaterialPageRoute(builder: (context) => Home_Page()),
                            // );
                          },
                          child: const Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontFamily: 'sf-pro-display-cufonfonts',
                            ),
                          ),
                        ),
                      ),

                      // Text for  Dont have an account Create account
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'already have an account?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'sf-pro-display-cufonfonts',
                              ),
                            ),

                            // GestureDetector for sign up
                            GestureDetector(
                                child: const Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'sf-pro-display-cufonfonts',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogIn_Page()),
                                  );
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
