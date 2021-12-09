import 'package:flutter/material.dart';


class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[

    Container(
      color: Colors.blueAccent,
       child: Column(
         children: <Widget>[
           Row(children:[
             Divider(color: Colors.black,thickness: 1.0,),
             Icon(Icons.account_circle,size: 50,color: Colors.grey,),
             Text("GURUHUB",style: TextStyle(fontSize: 30,fontFamily: 'Muli'),),
           ]),
           Divider(color: Colors.black,thickness: 1.0,),

           ListTile(title: Text("About Us",style: TextStyle(fontFamily: 'Muli'),),
               onTap: (){
                 // Navigator.of(context).pop();
                 // Navigator.push(
                 //   context,
                 //   MaterialPageRoute(builder: (context) => DoctorsInfo()),
                 // );
               }),
           ListTile(title: Text("Register Know!",style: TextStyle(fontFamily: 'Muli'),),
               onTap: (){
                 // Navigator.of(context).pop();
                 // Navigator.push(
                 //   context,
                 //   MaterialPageRoute(builder: (context) => EmailSignUp()),
                 // );
               }),
        ],
      ),
      ),
      ],
      )
    );
  }
}
