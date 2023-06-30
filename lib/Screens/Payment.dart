import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.amber[200],
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomAppBar(
        //   surfaceTintColor: Colors.amberAccent,
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
        //   padding: EdgeInsets.all(10),
        //   height: MediaQuery.of(context).size.height * 0.06,
        //   color: Color.fromARGB(255, 99, 196, 218),
        // ),
        body: Container(
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('lib/images/6032477.jpg'),
                //     fit: BoxFit.cover),
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 199, 227, 241),
              Color.fromARGB(255, 182, 220, 237)
            ])),
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/images/pay.jpg'),
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
                        'MAKE PAYMENT',
                        style: TextStyle(fontSize: 32, color: Colors.black),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.16,
                          MediaQuery.of(context).size.height * 0.03, 0, 0),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.06,
                        MediaQuery.of(context).size.height * 0.07, 0, 0),
                    Image.asset(
                      'lib/images/paymenticon.png',
                      height: MediaQuery.of(context).size.height * 0.1,
                    ).pLTRB(MediaQuery.of(context).size.height * 0.09,
                        MediaQuery.of(context).size.height * 0.09, 0, 0)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * 0.37,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.06,
                        MediaQuery.of(context).size.height * 0.09, 0, 0),
                    Container(
                      width: MediaQuery.of(context).size.height * 0.37,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          //----------------------name of token----------------------------
                          Stack(children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.066,
                              width: MediaQuery.of(context).size.height * 0.32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ).pLTRB(
                                MediaQuery.of(context).size.height * 0.026,
                                MediaQuery.of(context).size.height * 0.026,
                                0,
                                0),
                            TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  hintText: "AMOUNT ",
                                  prefixIcon:
                                      Icon(CupertinoIcons.money_dollar)),
                            ).p(20),
                          ]),
                          //-------------------------------------------------
                          Stack(children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.066,
                              width: MediaQuery.of(context).size.height * 0.32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ).pLTRB(
                                MediaQuery.of(context).size.height * 0.026,
                                MediaQuery.of(context).size.height * 0.026,
                                0,
                                0),
                            TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  hintText: "TOKEN",
                                  prefixIcon:
                                      Icon(CupertinoIcons.suit_diamond)),
                            ).p(20),
                          ]),

                          ///-----------------------------build button ------------------------
                          Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Stack(children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.height * 0.16,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.white, width: 5),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                              ).pLTRB(5, 5, 0, 0),
                              Container(
                                // clipBehavior: Clip.antiAlias,
                                child: TextButton(
                                  child: "Pay"
                                      .text
                                      .black
                                      .headline5(context)
                                      .make(),
                                  onPressed: () {
                                    Get.snackbar(
                                        "Token creation ", ' successful',
                                        snackPosition: SnackPosition.TOP);
                                    // Get.to(HomePage());
                                  },
                                ),
                                width:
                                    MediaQuery.of(context).size.height * 0.16,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 3),
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
                          ).pLTRB(0, MediaQuery.of(context).size.height * 0.01,
                              0, 0),
                          //-------------------------------------------------------
                        ],
                      ).pLTRB(
                          0, MediaQuery.of(context).size.height * 0.04, 0, 0),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                        MediaQuery.of(context).size.height * 0.07, 0, 0),
                  ],
                )
              ],
            )));
  }
}
