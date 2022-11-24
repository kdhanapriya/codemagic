
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';
class JobInfoScreen extends StatefulWidget {
  const JobInfoScreen({Key? key}) : super(key: key);

  @override
  _JobInfoScreenState createState() => _JobInfoScreenState();
}

class _JobInfoScreenState extends State<JobInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF2F5FA),
      child: Column(children: [_jopbInfo(),SizedBox(height: 20,),_issueWidget()],),
    );
  }

 Widget _jopbInfo()
  {
    return Container(
      padding: EdgeInsets.only(top:10,left: 10,right: 10),
      child: Card(
        color: Colors.white,


        child:

        Container(
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
                          Flexible(child: Text("Kingspan GmbH FM 194-401 DC5", style:  SensfixStyles.textwithgrayand18sizeandBold(SensfixStyles.black),
                          )),Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: SensfixStyles.appcolor,

                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child:
                              Flexible(child: Text("Assigned",style: SensfixStyles.textwithgrayand10sizeandNormal(SensfixStyles.white)))
                          ),
                        ]),
                    SizedBox(height: 10,),

                    RichText(
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        style:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                        children: <TextSpan>[
                          TextSpan(text: 'C1/R1/G1 Floor/4440 El Camino Real Los Altos, CA 94022, USA'),
                          TextSpan(
                              text: ' (view map)',
                              style:SensfixStyles.textwithgrayand15sizeandBold(Color(0xff2F4858))  ,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Terms of Service"');
                                }),

                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                  ]))
            ],),
        ),),);
  }

  Widget _issueWidget()
  {
    return Container(
      padding: EdgeInsets.only(top:10,left: 10,right: 10),
      child: Card(
        color: Colors.white,


        child:

        Container(
          padding: EdgeInsets.all(15),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Issue",style: SensfixStyles.textwithgrayand15sizeandNormal(Color(0xffD65151)),),
          Container(color: Color(0x30348DF5),), SizedBox(height: 10,),
            Text("My, Air Conditioner can’t set temperature less than 76 Fahrenheit",style: SensfixStyles.textwithgrayand15sizeandNormal(Color(0xaa0B1922))),

           SizedBox(height: 15,),
            Text("Attachment",style: SensfixStyles.textwithgrayand12sizeandNormal(Color(0xaa2A2A2A))),
            SizedBox(height: 10,),
            SizedBox(
              height: 70,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true, physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext ctx, int index) {
                    return
                      Container(
                        height: 70,
                        width: 80,
                          margin: EdgeInsets.only(right: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),

                          child: Image(
                              height: 60,
                              width:60,
                              image:AssetImage("assets/images/report_img.png")),
                        ),
                      );;
                  }

              ),
            )
          ],
          )
          ),),);

  }
}
