import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'QuestionPage.dart';
import 'colours.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Main_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:main() ,
    );
  }
}

class main extends StatefulWidget {
  @override
  _mainState createState() => _mainState();
}

class _mainState extends State<main> {
  var height,width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
     width = MediaQuery.of(context).size.width;
    var _index=0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colours.appbarcolor.withOpacity(0.5),
          leading: IconButton(
            icon:Icon(Icons.menu,color: Colours.blue,size:height*0.039),
            onPressed: () {  },
          ),
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: "NEET",
                  style: TextStyle( fontWeight: FontWeight.w500,color: Colors.deepOrangeAccent,fontSize:height*0.039)),
              TextSpan(
                  text: "GRASP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,fontSize:height*0.037)),
            ]),

          ),
          actions: [
            IconButton(
                icon:Icon(Icons.help_outline_sharp,color: Colours.blue,size:height*0.039),
                onPressed:(){})
          ],
        ),
        body: ClipRRect(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Question_Page()),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.02),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: width*0.001,
                  blurRadius: width*0.001,
                  color: Colors.grey.withOpacity(0.6)
              )]
          ),
          child: FloatingNavbar(
            //margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.01),
            borderRadius: 6,
            backgroundColor: Colours.background,
            onTap: (int val) => setState(() => _index = val),
            selectedItemColor: Colours.blue,
            unselectedItemColor: Colours.blue,
            iconSize: 25,
            currentIndex: _index=0,
            items: [
              FloatingNavbarItem(icon: Icons.home_outlined, title: ''),
              FloatingNavbarItem(icon: Icons.person_outline, title: ''),
              FloatingNavbarItem(icon: Icons.picture_as_pdf_outlined, title: ''),
              FloatingNavbarItem(icon: Icons.star_border, title: ''),
              FloatingNavbarItem(icon: Icons.share_outlined, title: ''),
            ],
          ),
        ),
      ),
    );
  }
}


