import 'dart:io';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Controllers/Image.dart';
import 'package:wallet/Screens/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
  }

  final ImagePickerController photo = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 199, 227, 241),
          Color.fromARGB(255, 182, 220, 237)
        ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                ).centered().pLTRB(MediaQuery.of(context).size.height * 0.037,
                    MediaQuery.of(context).size.height * 0.08, 0, 0),
                // .pLTRB(0, MediaQuery.of(context).size.height * 0.3, 0, 0),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/images/6060363.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                      // gradient: LinearGradient(colors: [
                      //   Color.fromARGB(255, 206, 206, 235),
                      //   Color.fromARGB(255, 178, 176, 241)
                      // ]),
                      ),
                  child: Form(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(name),
                        //-----------------------------Add Image-----------------------------
                        Stack(children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.16,
                            width: MediaQuery.of(context).size.height * 0.16,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black),
                          ).pLTRB(MediaQuery.of(context).size.height * 0.01,
                              MediaQuery.of(context).size.height * 0.004, 0, 0),
                          Obx(
                            () => InkWell(
                              onDoubleTap: () => photo.getImage(),
                              child: CircleAvatar(
                                // foregroundColor: Colors.black,
                                radius:
                                    MediaQuery.of(context).size.height * 0.08,
                                backgroundImage: photo.pathof.isNotEmpty
                                    ? FileImage(File(photo.pathof.toString()))
                                    : null,
                              ),
                            ),
                          )
                        ]),
                        //--------------------------------Name-------------------------
                        Stack(children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.height * 0.34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ).pLTRB(MediaQuery.of(context).size.height * 0.026,
                              MediaQuery.of(context).size.height * 0.026, 0, 0),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText: "Name ",
                                prefixIcon:
                                    Icon(CupertinoIcons.profile_circled)),
                          ).p(20),
                        ]),

                        ///------------------------------email inputbox---------------
                        Stack(children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.height * 0.34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ).pLTRB(MediaQuery.of(context).size.height * 0.026,
                              MediaQuery.of(context).size.height * 0.026, 0, 0),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText: "Email Id",
                                prefixIcon: Icon(CupertinoIcons.mail_solid)),
                          ).p(20),
                        ]),
                        ///////------------------------------password inputbox---------------------
                        Stack(children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.height * 0.34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ).pLTRB(MediaQuery.of(context).size.height * 0.026,
                              MediaQuery.of(context).size.height * 0.026, 0, 0),
                          TextFormField(
                            // obscureText: true,
                            // obscuringCharacter: '#',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText: "Password",
                                prefixIcon: Icon(CupertinoIcons.lock)),
                          ).p(20),
                        ]),
                        //----------------confirm password -----------------
                        Stack(children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.height * 0.34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ).pLTRB(MediaQuery.of(context).size.height * 0.026,
                              MediaQuery.of(context).size.height * 0.026, 0, 0),
                          TextFormField(
                            // obscureText: true,
                            // obscuringCharacter: '#',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText: "Password",
                                prefixIcon: Icon(CupertinoIcons.padlock_solid)),
                          ).p(20),
                        ]),
                        //-------------------------------------Sign Up button-----------------------------
                        Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.height * 0.16,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                            ).pLTRB(5, 5, 0, 0),
                            Container(
                              // clipBehavior: Clip.antiAlias,
                              child: TextButton(
                                child: "Sign Up"
                                    .text
                                    .black
                                    .headline5(context)
                                    .make(),
                                onPressed: () {
                                  Get.snackbar("Sign Up ", 'Successful',
                                      snackPosition: SnackPosition.TOP);
                                  Get.to(HomePage());
                                },
                              ),
                              width: MediaQuery.of(context).size.height * 0.16,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: AlignmentDirectional.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 109, 190, 240),
                                        Color.fromARGB(255, 99, 196, 218)
                                      ])),
                            ),
                          ]),
                        ).pLTRB(
                            0, MediaQuery.of(context).size.height * 0.04, 0, 0),
                      ],
                    ),
                  )).centered(),
                ).centered().pLTRB(MediaQuery.of(context).size.height * 0.005,
                    MediaQuery.of(context).size.height * 0.06, 0, 0),
              ],
            ).centered(),
          ]),
        ),
      )),
    );
  }
}
