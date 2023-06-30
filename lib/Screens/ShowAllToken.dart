import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screens/Payment.dart';

class ShowAllToken extends StatelessWidget {
  const ShowAllToken({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(Payment());
          },
          backgroundColor: Colors.amber[200],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.amberAccent,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.06,
          color: Color.fromARGB(255, 99, 196, 218),
        ),
        body: Container(
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('lib/images/6032477.jpg'),
                //     fit: BoxFit.cover),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 199, 227, 241),
                  Color.fromARGB(255, 182, 220, 237)
                ])),
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/token.jpg'),
                                fit: BoxFit.cover),
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.35,
                        height: MediaQuery.of(context).size.height * 0.16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.08,
                          MediaQuery.of(context).size.height * 0.09, 0, 0),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.35,
                        height: MediaQuery.of(context).size.height * 0.16,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          'TOKENS',
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ).pLTRB(MediaQuery.of(context).size.height * 0.16,
                            MediaQuery.of(context).size.height * 0.06, 0, 0),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.06,
                          MediaQuery.of(context).size.height * 0.07, 0, 0),
                      Image.asset(
                        'lib/images/alltokens.png',
                        height: MediaQuery.of(context).size.height * 0.1,
                      ).pLTRB(MediaQuery.of(context).size.height * 0.09,
                          MediaQuery.of(context).size.height * 0.09, 0, 0)
                    ],
                  ),

                  //----------------------- tokens list----------------------
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.045,
                          MediaQuery.of(context).size.height * 0.03, 0, 0),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: AlignmentDirectional.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 171, 138, 226),
                                  Color.fromARGB(255, 167, 139, 245)
                                ])),
                        child: ListTile(
                          leading: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.006,
                                  MediaQuery.of(context).size.height * 0.003,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                          title: "Etherium".text.scale(2).make(),
                          trailing: Column(
                            children: [
                              "564".text.green900.bold.scale(1.3).make(),
                              '03-07-2023'.text.make()
                            ],
                          ).pLTRB(0, MediaQuery.of(context).size.height * 0.012,
                              0, 0),
                        ).centered(),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                          MediaQuery.of(context).size.height * 0.02, 0, 0),
                    ],
                  ),
                  //----------------------------------------------------------------------
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.045,
                          MediaQuery.of(context).size.height * 0.03, 0, 0),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: AlignmentDirectional.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 228, 204, 131),
                                  Color.fromARGB(255, 237, 211, 117)
                                ])),
                        child: ListTile(
                          leading: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.006,
                                  MediaQuery.of(context).size.height * 0.003,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                          title: "Etherium".text.scale(2).make(),
                          trailing: Column(
                            children: [
                              "564".text.green900.bold.scale(1.3).make(),
                              '03-07-2023'.text.make()
                            ],
                          ).pLTRB(0, MediaQuery.of(context).size.height * 0.012,
                              0, 0),
                        ).centered(),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                          MediaQuery.of(context).size.height * 0.02, 0, 0),
                    ],
                  ),
                  //--------------------------------------------------------------------
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.045,
                          MediaQuery.of(context).size.height * 0.03, 0, 0),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: AlignmentDirectional.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 136, 190, 235),
                                  Color.fromARGB(255, 106, 154, 238)
                                ])),
                        child: ListTile(
                          leading: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.006,
                                  MediaQuery.of(context).size.height * 0.003,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                          title: "Etherium".text.scale(2).make(),
                          trailing: Column(
                            children: [
                              "564".text.green900.bold.scale(1.3).make(),
                              '03-07-2023'.text.make()
                            ],
                          ).pLTRB(0, MediaQuery.of(context).size.height * 0.012,
                              0, 0),
                        ).centered(),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                          MediaQuery.of(context).size.height * 0.02, 0, 0),
                    ],
                  )
                  //--------------------------------------------------------------------
                ],
              ),
            )));
  }
}
