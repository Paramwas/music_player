import 'package:flutter/material.dart';
import 'package:produv/sigin./singingProvider.dart';

class Signing extends StatefulWidget {
  const Signing({super.key});

  @override
  State<Signing> createState() => _SigningState();
}

class _SigningState extends State<Signing> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                color: const Color.fromARGB(20, 255, 255, 255),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back to Spotify',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
                Text(
                  'Enter username and passsword',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(0, 255, 255, 255)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 500,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        shape: BoxShape.rectangle),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      controller: username,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'example@gmail.com',
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(141, 255, 252, 252)),
                          labelText: 'username',
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            decorationThickness: 2,
                          )),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 500,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        shape: BoxShape.rectangle),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      controller: password,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'password',
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(141, 255, 252, 252)),
                          labelText: 'password',
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            decorationThickness: 2,
                          )),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        final justice = username.text;
                        final personal = password.text;
                        casy(context, justice, personal);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(29, 255, 254, 254)),
                      child: Text(
                        'Signin',
                        style: TextStyle(
                          color: const Color.fromARGB(246, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
