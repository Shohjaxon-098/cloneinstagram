import 'package:cloneinstagram/pages/home_page.dart';
import 'package:cloneinstagram/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'gethelp_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isVisible = false;
  bool passToggle = true;
  final _formfield = GlobalKey<_SignInState>();
  String dropdownValue = "English";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int buttonColor = 0xfff000000;
  bool inputTextNotNull = false;
  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 90,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                child: DropdownButton<String>(
                  dropdownColor: Colors.white,
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 10,
                  style: TextStyle(color: Colors.black54),
                  underline: Container(),
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: <String>['English', 'Uzbek', 'Russion', 'Arabic']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Column(
                children: [
                  Center(
                      child: Image(
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/instagram.png"),
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .10,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        onChanged: (text) {
                          setState(() {
                            if (usernameController.text.length >= 2 &&
                                passwordController.text.length >= 2) {
                              inputTextNotNull = true;
                            } else {
                              inputTextNotNull = false;
                            }
                          });
                        },
                        controller: usernameController,
                        style: TextStyle(
                          fontSize: deviseWidth * .040,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Phone number , email or username',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviseWidth * .04,
                  ),
                  Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .10,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: TextFormField(
                        onChanged: (text) {
                          setState(() {
                            if (usernameController.text.length >= 2 &&
                                passwordController.text.length >= 2) {
                              inputTextNotNull = true;
                            } else {
                              inputTextNotNull = false;
                            }
                          });
                        },
                        controller: passwordController,
                        obscureText: isVisible,
                        style: TextStyle(
                          fontSize: deviseWidth * .040,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviseWidth * .04,
                  ),
                  inputTextNotNull
                      ? GestureDetector(
                          onLongPressStart: (s) {
                            setState(() {
                              buttonColor = 0xfff000000;
                            });
                          },
                          onLongPressEnd: (s) {
                            setState(() {
                              buttonColor = 0xfff000000;
                            });
                          },
                          onTap: () {
                            print('Sign In');
                          },
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Container(
                              width: deviseWidth * .90,
                              height: deviseWidth * .10,
                              decoration: BoxDecoration(
                                color: Color(buttonColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviseWidth * .040,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: deviseWidth * .90,
                          height: deviseWidth * .10,
                          decoration: BoxDecoration(
                            color: Color(0xfff2E2E2E),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: deviseWidth * .035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot your login details? ',
                        style: TextStyle(
                          fontSize: deviseWidth * .035,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Get help');
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GetHelpPage(),
                                ));
                          },
                          child: Text(
                            'Get help',
                            style: TextStyle(
                              fontSize: deviseWidth * .035,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviseWidth * .040,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: deviseWidth * .040,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviseWidth * .06,
                  ),
                  Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/facebook.png',
                          height: deviseWidth * .080,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Login with facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: deviseWidth * .041,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: deviseWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: deviseWidth,
                      height: 1,
                      color: Color(0xffA2A2A2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: deviseWidth * .040,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            child: Text(
                              'Sing up',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
