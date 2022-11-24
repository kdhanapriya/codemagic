
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sensfix/screens/options_screen.dart';

import '../screens/homescreen.dart';
import '../utils/theme/theme.dart';

class MyReportListItem extends StatefulWidget {
  const MyReportListItem({Key? key}) : super(key: key);

  @override
  _MyReportListItemState createState() => _MyReportListItemState();
}

class _MyReportListItemState extends State<MyReportListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(top:10,left: 10,right: 10),
      child: Card(
        color: Colors.white,
        

        child: 
        
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) =>
                    OptionScreen()
                ));

          },
          child: Container(
            padding: EdgeInsets.all(15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
height: 80,
    width: 90,
    image:AssetImage("assets/images/wr_detector@2x.png")),
              SizedBox(width: 7,),
              Expanded(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Text("Kingspan GmbH FM 194-401 DC5", style:  SensfixStyles.textwithgrayand16sizeandBold(SensfixStyles.black),
                )),
                  Container(
                   padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: SensfixStyles.appcolor,

                        borderRadius: BorderRadius.circular(5)
                    ),
                    child:
                    Text("Assigned",style: SensfixStyles.textwithgrayand10sizeandNormal(SensfixStyles.white))
                ),
                ]),
              SizedBox(height: 10,),

              RichText(
                textDirection: TextDirection.ltr,
            text: TextSpan(
              style:SensfixStyles.textwithgrayand12sizeandNormal(Color(0xff2F4858)) ,
              children: <TextSpan>[
                TextSpan(text: 'C1/R1/G1 Floor/4440 El Camino Real Los Altos, CA 94022, USA'),
                TextSpan(
                    text: ' (view map)',
                    style:SensfixStyles.textwithgrayand12sizeandBold(Color(0xff2F4858))  ,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Terms of Service"');
                      }),

              ],
            ),
      ),
              SizedBox(height: 10,),

              Text("Air Conditioner can’t set temp less than 76 Fahrenheit.", style:SensfixStyles.textwithgrayand13sizeandNormal(Color(0xffCC1601)))  ,
                SizedBox(height: 10,),

              Text("6:03 PM, 6 July 2020",style:SensfixStyles.textwithgrayand10sizeandNormal(Color(0x500B1922) ))],),
    )
    ],),
          ),
        ),),);
  }
}
