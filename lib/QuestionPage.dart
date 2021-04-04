

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'colours.dart';

class Question_Page extends StatefulWidget {
  @override
  _Question_PageState createState() => _Question_PageState();
}

class _Question_PageState extends State<Question_Page> {
  var height,width;
  String qno ="Q10.",ques="Which of the following is measured by vercier caliper";
  @override
  Widget build(BuildContext context) {
    height =MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Container(
      height:height,
      width:width ,
      color: Colors.white,
      child: Column(
        children: [
          //for the  top layer
          topLayer(),
          //for the subject name
          Center(
            child:Text(
              "PHYSICS",
              style:TextStyle(
                  color: Colours.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.067

              ),),
          ),
          Padding(
              padding:EdgeInsets.symmetric(vertical:height*0.01,horizontal: width*0.04),
            child: getresponse(),
          ),
        getBottomLayer()
        ],
      ),
    );
  }

  topLayer(){
    return Stack(
      children: [
        Container(
          height:height*0.3,
          width:width,
          color: Colors.white,
        ),
        Container(
          height:height*0.23,
          width:width,
          child: Image.asset("assets/physics.jpg",fit: BoxFit.fitWidth,),
        ),
        Positioned(
          top: height*0.14,
          left: width*0.35,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width*0.16),
                border: Border.all(
                    color:Colors.white,
                    width: width*0.02
                ),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: width*0.013,
                      blurRadius: width*0.018,
                      color: Colors.grey.withOpacity(0.6)
                  )
                ]
            ),
            child: CircleAvatar(
              radius: width*0.14,
              backgroundColor: Colors.white,
              child:Image.asset("assets/physicsicon.png",fit: BoxFit.cover,),
            ),
          ),
        ),
      ],
    );
  }

  getresponse() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       item1(),
       item2(),
      ],
    );
  }

  item1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       getText("Questions"),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: new CircularPercentIndicator(
            radius: width*0.18,
            lineWidth: 7.0,
            percent: 0.8,
            center: new Text("50%"),
            progressColor: Colours.blue,
          ),
        )
      ],
    );
  }

  item2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        getText("Time"),
        Padding(
          padding: const EdgeInsets.only(top:5.0),
          child: CircularPercentIndicator(
            radius: width*0.18,
            lineWidth: 7.0,
            percent: 0.5,
            center: new Text("1:30"),
            progressColor: Colours.blue,
          ),
        )
      ],
    );
  }

  getText(String Header) {
    return Text(Header,style: TextStyle(
      fontSize: width*0.048,
      fontWeight: FontWeight.w700,
      color: Colours.blue
    ),);
  }

  getBottomLayer() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.04),
          height: height*0.069,
          width: width,
          decoration: BoxDecoration(
            color: Colours.blue,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(width*0.009),
              bottomLeft:Radius.circular(width*0.009),
              topRight: Radius.circular(width*0.009),
              bottomRight: Radius.circular(width*0.009),
            )
          ),
          child:Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:15.0),
                  child: Text(qno,
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                Flexible(
                  child: Text(ques,
                  maxLines: 2,
             overflow: TextOverflow.ellipsis ,
                      style: TextStyle(
                          color: Colors.white
                      )
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height*0.02,
        ),
       optionButton1("Dimensions"),
        SizedBox(
          height: height*0.018,
        ),
       optionButton2("Sound"),
        SizedBox(
          height: height*0.018,
        ),
       optionButton3("Time"),
        SizedBox(
          height: height*0.018,
        ),
       optionButton4("Temperature"),
        SizedBox(
          height: height*0.018,
        ),
      ],
    );
  }
  optionButton1(String Option){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: width*0.04),
      height:height*0.04,
      width: width,
      decoration: BoxDecoration(
          color: Colours.blue,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(width*0.009),
            bottomLeft:Radius.circular(width*0.009),
            topRight: Radius.circular(width*0.009),
            bottomRight: Radius.circular(width*0.009),
          )
      ),
      child: Text(
        Option,
        style: TextStyle(
          color:Colors.white
        ),
      ),
    );
  }
  optionButton2(String Option){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: width*0.04),
      height:height*0.04,
      width: width,
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(width*0.009),
            bottomLeft:Radius.circular(width*0.009),
            topRight: Radius.circular(width*0.009),
            bottomRight: Radius.circular(width*0.009),
          ),
          boxShadow: [
            BoxShadow(
                spreadRadius: width*0.01,
                blurRadius: width*0.01,
                color: Colors.grey.withOpacity(0.6)
            )]
      ),
      child: Text(
        Option,
        style: TextStyle(
            color:Colours.blue
        ),
      ),
    );
  }
  optionButton3(String Option){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: width*0.04),
      height:height*0.04,
      width: width,
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(width*0.009),
            bottomLeft:Radius.circular(width*0.009),
            topRight: Radius.circular(width*0.009),
            bottomRight: Radius.circular(width*0.009),
          ),
          boxShadow: [
            BoxShadow(
                spreadRadius: width*0.01,
                blurRadius: width*0.01,
                color: Colors.grey.withOpacity(0.6)
            )]
      ),
      child: Text(
        Option,
        style: TextStyle(
            color:Colours.blue
        ),
      ),
    );
  }
  optionButton4(String Option){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: width*0.04),
      height:height*0.04,
      width: width,
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(width*0.009),
            bottomLeft:Radius.circular(width*0.009),
            topRight: Radius.circular(width*0.009),
            bottomRight: Radius.circular(width*0.009),
          ),
          boxShadow: [
          BoxShadow(
          spreadRadius: width*0.01,
          blurRadius: width*0.01,
          color: Colors.grey.withOpacity(0.6)
        )]
      ),
      child: Text(
        Option,
        style: TextStyle(
            color:Colours.blue
        ),
      ),
    );
  }
}
