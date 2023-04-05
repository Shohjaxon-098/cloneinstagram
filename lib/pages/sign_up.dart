import 'package:cloneinstagram/pages/nextsign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  int buttonColor = 0xff26A9FF;
  bool inputTextNotNull = false;
  String? username;
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
                "Choose username",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "You can always change it later",
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
                  onSaved: (newValue) => username = newValue,
                  validator: (kiritilganUsername) =>
                      kiritilganUsername!.contains(usernameValit)
                          ? null
                          : "Wrong username!",
                  onChanged: (text) {
                    setState(() {
                      if (usernameController.text.length >= 2) {
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
                        print(username);
                        _key.currentState!.save();
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeftWithFade,
                            child: NextSignUpPage(),
                            isIos: true,
                            duration: Duration(milliseconds: 400),
                          ),
                        );
                      }
                    },
                    child: InkWell(
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          print(username);
                          _key.currentState!.save();
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: NextSignUpPage(),
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
