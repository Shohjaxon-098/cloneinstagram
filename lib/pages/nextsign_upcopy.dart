
import 'package:cloneinstagram/pages/nextsign_up.dart';
import 'package:cloneinstagram/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

class NextSignUpPageCopy extends StatefulWidget {
  const NextSignUpPageCopy({super.key});

  @override
  State<NextSignUpPageCopy> createState() => _NextSignUpPageCopyState();
}

class _NextSignUpPageCopyState extends State<NextSignUpPageCopy> {
  TextEditingController passwordController = TextEditingController();
  int buttonColor = 0xff26A9FF;
  bool inputTextNotNull = false;
  String? password;
  final _key = GlobalKey<FormState>();

  RegExp usernameValit = RegExp(r'^[a-z][a-z0-9_.]{7,29}$');
 
  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
              child: Text(
                "Create a password",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "For security, your password must be 6 characters\n                                   or more",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onSaved: (newValue) => password = newValue,
                  validator: (kiritilganpassword) =>
                      kiritilganpassword!.length>=6
                          ? null
                          : "Enter more than 6 characters",
                  onChanged: (text) {
                    setState(() {
                      if (passwordController.text.length >= 2) {
                        inputTextNotNull = true;
                      } else {
                        inputTextNotNull = false;
                      }
                    });
                  },
                  controller: passwordController,
                  style: TextStyle(
                    fontSize: deviseWidth * .040,
                  ),
                  decoration: InputDecoration(
                    fillColor: Color(0xffE8E8E8),filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Username',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            inputTextNotNull
                ? GestureDetector(
                    onLongPressStart: (s) {
                      setState(() {
                        buttonColor = 0xff78C9FF;
                      });
                    },
                    onLongPressEnd: (s) {
                      setState(() {
                        buttonColor = 0xff26A9FF;
                      });
                    },
                    onTap: () {
                      if (_key.currentState!.validate()) {
                        print(password);
                        _key.currentState!.save();
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeftWithFade,
                            child: SignUp(),
                            isIos: true,
                            duration: Duration(milliseconds: 400),
                          ),
                        );
                      }
                    },
                    child: InkWell(
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          print(password);
                          _key.currentState!.save();
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: SignUp(),
                              isIos: true,
                              duration: Duration(milliseconds: 400),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: deviseWidth * .90,
                        height: deviseWidth * .13,
                        decoration: BoxDecoration(
                          color: Color(buttonColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
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
                    height: deviseWidth * .13,
                    decoration: BoxDecoration(
                      color: Color(0xff78C9FF),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: deviseWidth * .040,
                          fontWeight: FontWeight.bold,
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

