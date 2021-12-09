import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CarouselSlider(items: [
          //1st Image of Slider
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.vQnISJ-apmrBeyYI5I07SAHaDt%26pid%3DApi&f=1"),
                fit: BoxFit.cover,
              ),
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: <Widget>[
            //     Text('Cloud Hosted Digital Solution For Medium and Small Business',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 15
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //
            //   ],
            // ),
          ),

          //2nd Image of Slider
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fblog.eduonix.com%2Fwp-content%2Fuploads%2F2018%2F09%2FFull-Stack-Developer.jpg&f=1&nofb=1"),
                fit: BoxFit.cover,
              ),
            ),

          ),

          //3rd Image of Slider
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage("https://yt3.ggpht.com/a/AATXAJwIr9kRfhUqn-Wx24JjkWsrUadfv8qyBiCERg=s900-c-k-c0xffffffff-no-rj-mo"),
                fit: BoxFit.cover,
              ),
            ),

          ),
          //4th Image of Slider
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage("http://www.eliematta.com/system/files/articles/data-science-icon.png"),
                  fit: BoxFit.cover
              ),
            ),

          ),
//5th img

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flightit.io%2Fblog%2Fcontent%2Fimages%2F2019%2F08%2FLARAVEL.png&f=1&nofb=1"),
                  fit: BoxFit.cover
              ),
            ),

          ),

        ], options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,

        ))
      ],
    );
  }
}
