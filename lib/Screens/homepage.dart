import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wallet/Screens/CreateWallet.dart';
import 'package:wallet/Screens/Payment.dart';
import 'package:wallet/Screens/ShowAllToken.dart';

import 'CreateWallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-----------------------------bottom app bar---------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Payment());
        },
        backgroundColor: Colors.amber[200],
        child: Icon(CupertinoIcons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.amberAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.06,
        child: Row(children: []),
        // notchMargin: 5,
        color: Color.fromARGB(255, 99, 196, 218),
        // backgroundColor: Colors.black87,
        // landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        // onTap: (currentindex) {
        //   Get.snackbar('index', currentindex.toString());
        // },
        // // type: BottomNavigationBarType.shifting,
        // items: <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: IconButton(
        //         color: Colors.amber,
        //         onPressed: () {
        //           currentindex = 1;
        //           print(currentindex);
        //           Get.snackbar('index', currentindex.toString());
        //           setState(() {});
        //           Get.to(HomePage());
        //         },
        //         icon: Icon(CupertinoIcons.home)),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: IconButton(
        //       color: Colors.red,
        //       onPressed: () {
        //         currentindex = 2;
        //         print(currentindex);
        //         Get.snackbar('index', currentindex.toString());
        //         setState(() {});
        //         Get.to(CreateWallet());
        //       },
        //       icon: Icon(CupertinoIcons.money_dollar),
        //     ),
        //     label: 'Wallet',
        //   ),
        //   // BottomNavigationBarItem(
        //   //   icon: Icon(Icons.school),
        //   //   label: 'Profile',
        //   // ),
        // ],
      ),
      //---------------------------------------------------------------------------
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('lib/images/6032477.jpg'),
                //     fit: BoxFit.cover),
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 199, 227, 241),
              Color.fromARGB(255, 182, 220, 237)
            ])),
            child: Column(
              children: [
                Stack(children: [
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.35,
                  //   width: double.maxFinite,
                  //   decoration: BoxDecoration(
                  //     borderRadius:
                  //         BorderRadius.vertical(bottom: Radius.circular(20)),
                  //     border: Border.all(
                  //       style: BorderStyle.none,
                  //     ),
                  //     color: Colors.black,
                  //   ),
                  // ).pLTRB(0, MediaQuery.of(context).size.height * 0.006, 0, 0),
                  Container(
                    // constraints: BoxConstraints.loose(Size.infinite),
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('lib/images/6032477.jpg'),
                            fit: BoxFit.cover),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(20)),
                        border: Border.all(
                          style: BorderStyle.none,
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: AlignmentDirectional.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 56, 123, 154),
                              Color.fromARGB(255, 62, 87, 101)
                            ])),
                  ),
                  IconButton(
                          onPressed: () {
                            Get.snackbar("Notification", "message",
                                snackPosition: SnackPosition.TOP);
                          },
                          color: Colors.white70,
                          icon: Icon(
                            CupertinoIcons.bell,
                            size: MediaQuery.of(context).size.height * 0.04,
                          ))
                      .pLTRB(MediaQuery.of(context).size.width * 0.90,
                          MediaQuery.of(context).size.width * 0.04, 0, 0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        /////--------------------------------Top currency card part--------
                        ///--------------------------create builder here for currency
                        Card(
                          color: Colors.transparent,
                          elevation: 0,
                          // clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Stack(children: [
                            Container(
                              // clipBehavior: Clip.antiAlias,
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ).pLTRB(5, 5, 0, 0),
                            Container(
                              // clipBehavior: Clip.antiAlias,
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: AlignmentDirectional.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 136, 190, 235),
                                        Color.fromARGB(255, 106, 154, 238)
                                      ])),
                            ),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.052,
                                    MediaQuery.of(context).size.height * 0.034,
                                    0,
                                    0),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.050,
                                    MediaQuery.of(context).size.height * 0.032,
                                    0,
                                    0),
                          ]),
                        ),
                        //------------------------------------------------------------------
                        Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ).pLTRB(5, 5, 0, 0),
                            Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: AlignmentDirectional.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 228, 204, 131),
                                        Color.fromARGB(255, 237, 211, 117)
                                      ])),
                            ),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.052,
                                    MediaQuery.of(context).size.height * 0.034,
                                    0,
                                    0),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.050,
                                    MediaQuery.of(context).size.height * 0.032,
                                    0,
                                    0),
                          ]),
                        ),
                        //-------------------------------------------------------------------------------
                        Card(
                          color: Colors.transparent,
                          elevation: 0,
                          // clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Stack(children: [
                            Container(
                              // clipBehavior: Clip.antiAlias,
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ).pLTRB(5, 5, 0, 0),
                            Container(
                              // clipBehavior: Clip.antiAlias,
                              width: MediaQuery.of(context).size.height * 0.2,
                              height: MediaQuery.of(context).size.height * 0.27,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: AlignmentDirectional.bottomCenter,
                                      colors: [
                                        Color.fromARGB(255, 171, 138, 226),
                                        Color.fromARGB(255, 167, 139, 245)
                                      ])),
                            ),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.052,
                                    MediaQuery.of(context).size.height * 0.034,
                                    0,
                                    0),
                            Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.10,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white))
                                .pLTRB(
                                    MediaQuery.of(context).size.height * 0.050,
                                    MediaQuery.of(context).size.height * 0.032,
                                    0,
                                    0),
                          ]),
                        ),
                        //-----------------------------------------------------------------
                        InkWell(
                          onTap: () => Get.to(ShowAllToken()),
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            // clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(children: [
                              Container(
                                // clipBehavior: Clip.antiAlias,
                                width: MediaQuery.of(context).size.height * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.white, width: 5),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black),
                              ).pLTRB(5, 5, 0, 0),
                              Container(
                                // clipBehavior: Clip.antiAlias,
                                width: MediaQuery.of(context).size.height * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.27,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 5),
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: AlignmentDirectional.bottomCenter,
                                        colors: [
                                          Color.fromARGB(255, 136, 190, 235),
                                          Color.fromARGB(255, 106, 154, 238)
                                        ])),
                              ),
                              Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black))
                                  .pLTRB(
                                      MediaQuery.of(context).size.height *
                                          0.052,
                                      MediaQuery.of(context).size.height *
                                          0.034,
                                      0,
                                      0),
                              Container(
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.10,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.white))
                                  .pLTRB(
                                      MediaQuery.of(context).size.height *
                                          0.050,
                                      MediaQuery.of(context).size.height *
                                          0.032,
                                      0,
                                      0),
                            ]),
                          ),
                        ),
                      ],
                    ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                        MediaQuery.of(context).size.height * 0.16, 0, 0),
                  )
                ]),
                ////-----------------------------Create wallet part------------------------------------------

                Stack(
                  children: [
                    Image.asset(
                      'lib/images/back.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.height * 3,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.385,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.04,
                        MediaQuery.of(context).size.height * 0.020, 0, 0),
                    Container(
                      child: Text(
                        "Now Create your Token",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 34),
                      ).pLTRB(MediaQuery.of(context).size.height * 0.12,
                          MediaQuery.of(context).size.height * 0.03, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.height * 0.385,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('lib/images/5291450.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.02, 0, 0, 0),
                    //------------------------------icon on create wallet  part---------------
                    // Container(
                    //     clipBehavior: Clip.antiAlias,
                    //     height: MediaQuery.of(context).size.height * 0.02,
                    //     width: MediaQuery.of(context).size.height * 0.02,
                    //     color: Colors.white,
                    //     child: Image.asset(
                    //       'lib/images/5291450.jpg',
                    //       // height: MediaQuery.of(context).size.height * 0.3,
                    //       // width: MediaQuery.of(context).size.height * 0.5,
                    //     )),
                    //----------------------------------------profile part
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.009,
                        MediaQuery.of(context).size.height * 0.043, 0, 0),
                    Container(
                      child: Icon(
                        CupertinoIcons.person_fill,
                        color: Colors.blue,
                        size: MediaQuery.of(context).size.height * 0.046,
                      ).centered(),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.004,
                        MediaQuery.of(context).size.height * 0.04, 0, 0),
                    //-------------------------------tick
                    Container(
                      height: MediaQuery.of(context).size.height * 0.033,
                      width: MediaQuery.of(context).size.height * 0.033,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.050,
                        MediaQuery.of(context).size.height * 0.033, 0, 0),

                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.checkmark_alt,
                        color: Colors.blue,
                      ),
                      height: MediaQuery.of(context).size.height * 0.033,
                      width: MediaQuery.of(context).size.height * 0.033,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.047,
                        MediaQuery.of(context).size.height * 0.030, 0, 0),
                    //-------------------------------------create button---------------------------------
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
                            child:
                                "Create".text.black.headline5(context).make(),
                            onPressed: () {
                              Get.snackbar("Wallet ", 'fill details',
                                  snackPosition: SnackPosition.TOP);
                              Get.to(CreateWallet());
                            },
                          ),
                          width: MediaQuery.of(context).size.height * 0.16,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: AlignmentDirectional.bottomCenter,
                                  colors: [
                                    // Color.fromARGB(255, 159, 164, 242),
                                    // Color.fromARGB(255, 168, 148, 239)
                                    Color.fromARGB(255, 109, 190, 240),
                                    Color.fromARGB(255, 99, 196, 218)
                                  ])),
                        ),
                      ]),
                    ).pLTRB(MediaQuery.of(context).size.height * 0.12,
                        MediaQuery.of(context).size.height * 0.13, 0, 0),
                  ],
                ).pLTRB(MediaQuery.of(context).size.height * 0.010,
                    MediaQuery.of(context).size.height * 0.06, 0, 0),
                "Transactions".text.headline3(context).make().pLTRB(
                    0,
                    MediaQuery.of(context).size.height * 0.001,
                    00,
                    MediaQuery.of(context).size.height * 0.03),
                //--------------------------------------------transaction list--------------------
                //create builder for transaction list
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                        ).pLTRB(MediaQuery.of(context).size.height * 0.003,
                            MediaQuery.of(context).size.height * 0.003, 0, 0),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Stack(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.004,
                                  MediaQuery.of(context).size.height * 0.004,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                  child: Icon(
                                CupertinoIcons.arrow_2_squarepath,
                                size: MediaQuery.of(context).size.height * 0.04,
                              )).pLTRB(
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.01,
                                  0,
                                  0),
                            ]),
                            title: "First payment".text.bold.make(),
                            subtitle: "payment sent".text.make(),
                            trailing: Text('₹565',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  color: Colors.blueAccent,
                                  fontFamily: 'Roboto',
                                )),
                            // '${554}'.text.blue600.headline6(context).make(),
                          ),
                        )
                      ]).pLTRB(
                          0, 0, 0, MediaQuery.of(context).size.height * 0.03),
                      //------------------------------------------
                      Stack(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                        ).pLTRB(MediaQuery.of(context).size.height * 0.003,
                            MediaQuery.of(context).size.height * 0.003, 0, 0),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Stack(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.004,
                                  MediaQuery.of(context).size.height * 0.004,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                  child: Icon(
                                CupertinoIcons.arrow_2_squarepath,
                                size: MediaQuery.of(context).size.height * 0.04,
                              )).pLTRB(
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.01,
                                  0,
                                  0),
                            ]),
                            title: "Second payment".text.bold.make(),
                            subtitle: "payment sent".text.make(),
                            trailing: Text('₹565',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  color: Colors.amberAccent,
                                  fontFamily: 'Roboto',
                                )),
                            // '${554}'.text.blue600.headline6(context).make(),
                          ),
                        ).pLTRB(
                            0, 0, 0, MediaQuery.of(context).size.height * 0.03),
                      ]),
                      //----------------------------------------
                      Stack(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                        ).pLTRB(MediaQuery.of(context).size.height * 0.003,
                            MediaQuery.of(context).size.height * 0.003, 0, 0),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Stack(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ).pLTRB(
                                  MediaQuery.of(context).size.height * 0.004,
                                  MediaQuery.of(context).size.height * 0.004,
                                  0,
                                  0),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                  child: Icon(
                                CupertinoIcons.arrow_2_squarepath,
                                size: MediaQuery.of(context).size.height * 0.04,
                              )).pLTRB(
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.01,
                                  0,
                                  0),
                            ]),
                            title: "Third payment".text.bold.make(),
                            subtitle: "payment sent".text.make(),
                            trailing: Text('₹565',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  color: Colors.deepPurpleAccent,
                                  fontFamily: 'Roboto',
                                )),
                            // '${554}'.text.blue600.headline6(context).make(),
                          ),
                        )
                      ]).pLTRB(
                          0, 0, 0, MediaQuery.of(context).size.height * 0.03),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
