import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:food_delivery_app/screens/homepage.dart';
import 'package:food_delivery_app/screens/sign_up.dart';
import 'package:food_delivery_app/widgets/mytextformfield.dart';

import '../constrants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

late double _height, _width;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kprimary,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width * 1.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.red.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage('assets/design1.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 180,
                    child: Container(
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Container(
                            child: Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.1,
                                  fontFamily: 'Oswald'),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.1,
                                  fontFamily: 'Oswald'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperTwo(reverse: true),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 30,
                      ),
                      height: _height * 0.43,
                      width: _width,
                      child: Column(
                        children: [
                          MyTextformfield(
                            icon: Icon(Icons.mail),
                            hintname: "Email",
                          ),
                          Container(
                            height: _height * 0.13,
                            width: double.infinity,
                            child: Column(
                              children: [
                                MyTextformfield(
                                  icon: Icon(Icons.lock),
                                  hintname: "Password",
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        "Forget Password?",
                                        style: TextStyle(
                                          color: kprimary,
                                          fontFamily: 'Oswald',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ElevatedButton(
                                child: Text(
                                  "Log in",
                                  style: TextStyle(fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                }),
                          ),
                          Row(children: [
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 15.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 50,
                                  )),
                            ),
                            Text("OR"),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 15.0, right: 10.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 50,
                                  )),
                            ),
                          ]),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0,
                            ),
                            child: Container(
                              height: _height * 0.06,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    // fontFamily: 'Oswald'
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
