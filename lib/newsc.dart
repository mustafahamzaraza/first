import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';
import 'dart:ui' as ui;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
//int currentIndex;
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Container(
              //   height: 200,
              //   child: (currentIndex==0)
              //       ? Dashboard()
              //       : (currentIndex==1)
              //       ? Dashboard()
              //       : (currentIndex==2)
              //       ? Dashboard()
              //       : (currentIndex==3)
              //       ? Dashboard()
              //       : Dashboard(),
              // ),
              //services


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 64,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          //color: HexColor('#F8FAFB'),
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(13.0),
                            bottomLeft: Radius.circular(13.0),
                            topLeft: Radius.circular(13.0),
                            topRight: Radius.circular(13.0),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'WorkSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    //color: DesignCourseAppTheme.nearlyBlue,
                                  ),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Search for course',
                                    border: InputBorder.none,
                                    helperStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      //   color: HexColor('#B9BABC'),
                                    ),
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      //     color: HexColor('#B9BABC'),
                                    ),
                                  ),
                                  onEditingComplete: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Icon(Icons.search, color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  )
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(
              //         padding: const EdgeInsets.only(right:120.0),
              //         child: Text('GuruHub',style: TextStyle(fontFamily: 'Muli'),)),
              //     // Image.asset(
              //     //   'assets/images/yyy.png',
              //     //   fit: BoxFit.fitWidth,
              //     //   height: 50,
              //     // ),
              //
              //   ],
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

