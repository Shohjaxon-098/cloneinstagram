import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TexTPageField extends StatefulWidget {
  const TexTPageField({super.key});

  @override
  State<TexTPageField> createState() => _TexTPageFieldState();
}

class _TexTPageFieldState extends State<TexTPageField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 100,
              height: 100,
              image: AssetImage("assets/instagram.png"),
            ),
            Text(
              "Instagram",
              style: TextStyle(fontFamily: "Billabong", fontSize: 60),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIconColor: Colors.black,
                labelStyle: TextStyle(color: Colors.black),
                label: Text("Email"),
                suffix: Text("@gmail.com"),
                prefixIcon: Icon(Icons.email_outlined),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.black,
              maxLength: 8,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                suffixIconColor: Colors.black,
                prefixIconColor: Colors.black,
                label: Text("Password"),
                prefixIcon: Icon(Icons.vpn_key_outlined),
                suffixIcon: Icon(Icons.visibility_off),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Kirish",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
