import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/newsc.dart';
import 'Drawer.dart';




class NaviagtionPage extends StatefulWidget {
  @override
  _NaviagtionPageState createState() => _NaviagtionPageState();
}

class _NaviagtionPageState extends State<NaviagtionPage>
    with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    //Home(),DoctorsInfo(),EmailSignUp()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.redAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Text('GuruHub',style: TextStyle(fontFamily: 'Muli'),)),
              // Image.asset(
              //   'assets/images/yyy.png',
              //   fit: BoxFit.fitWidth,
              //   height: 50,
              // ),


            ],

          ),
        ),
        drawer: MyDrawer(),
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),

        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          items: [
            new BottomNavigationBarItem(title: new Text("Home"),icon: new Icon(Icons.home,color: Colors.red.shade200,)),
            new BottomNavigationBarItem(title: new Text("About Us"),icon: new Icon(Icons.note,color: Colors.red.shade200)),
            new BottomNavigationBarItem(title: new Text("Register"),icon: new Icon(Icons.login,color: Colors.red.shade200)),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
