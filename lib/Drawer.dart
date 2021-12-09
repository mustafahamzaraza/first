import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.lime,
          divisionColor: Colors.grey,
          header: Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/splashimg.jpg',
                    height: 120,
                    width: 120,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Welcome!'),
                ],
              ),
            ),
          ),
          children: [
            // MLMenuItem(
            //     content: Text('Industries',style: TextStyle(fontFamily: 'Muli'),),
            //     trailing: Icon(Icons.arrow_right),
            //     onClick: () {
            //       Navigator.pop(context);
            //     },
            //     subMenuItems: [
            //       MLSubmenu(submenuContent: Text('Healthcare'), onClick: () {}),
            //       MLSubmenu(submenuContent: Text('Education'), onClick: () {}),
            //       MLSubmenu(
            //           submenuContent: Text('Food And Restorent'),
            //           onClick: () {}),
            //       MLSubmenu(
            //           submenuContent: Text('Engineering And Technology'),
            //           onClick: () {}),
            //       MLSubmenu(submenuContent: Text('Retail'), onClick: () {}),
            //     ]),

            MLMenuItem(
                content: Text('About Us',style: TextStyle(fontFamily: 'Muli'),),
                onClick: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DoctorsInfo()),
                  // );
                },
           ),
            MLMenuItem(
              content: Text('Enroll Now!',style: TextStyle(fontFamily: 'Muli'),),
              onClick: () {
                // Navigator.of(context).pop();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => EmailSignUp()),
                // );
              },
            ),
          ]),
    );
  }
}
