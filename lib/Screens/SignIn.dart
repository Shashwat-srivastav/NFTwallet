import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screens/SignUp.dart';
import 'package:wallet/Screens/homepage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                Image.asset(
                  'lib/images/log-in.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                )
                    .pLTRB(MediaQuery.of(context).size.height * 0.03,
                        MediaQuery.of(context).size.height * 0.02, 0, 0)
                    .centered()
                    .pLTRB(0, MediaQuery.of(context).size.height * 0.3, 0, 0),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/images/8288032.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(name),
                      ///------------------------------email inputbox---------------
                      Stack(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.height * 0.321,
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
                              prefixIcon: Icon(CupertinoIcons.profile_circled)),
                        ).p(20),
                      ]),
///////------------------------------password inputbox---------------------
                      Stack(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.height * 0.321,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                        ).pLTRB(MediaQuery.of(context).size.height * 0.026,
                            MediaQuery.of(context).size.height * 0.026, 0, 0),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '#',
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
//-------------------------------------Sign in button-----------------------------
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
                              child: "Sign In"
                                  .text
                                  .black
                                  .headline5(context)
                                  .make(),
                              onPressed: () {
                                Get.snackbar("Sign In ", 'Successful',
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
                          0, MediaQuery.of(context).size.height * 0.01, 0, 0),
                      Row(
                        children: [
                          "Do not have an account ?".text.make(),
                          TextButton(
                              onPressed: () {
                                Get.to(SignUp());
                              },
                              child: "Sign Up".text.make())
                        ],
                      ).p(20)
                    ],
                  )).centered(),
                )
                    .centered()
                    .pLTRB(0, MediaQuery.of(context).size.height * 0.3, 0, 0),
              ],
            ).centered(),
          ]),
        ),
      )),
    );
  }
}
