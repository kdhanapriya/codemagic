

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';
class AddReportScreen extends StatefulWidget {
  const AddReportScreen({Key? key}) : super(key: key);

  @override
  _AddReportScreenState createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  bool track=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  InkWell(
          onTap: (){
            setState(() {
              track=!track;
            });
          },
          child: Container(height: 70,child:
          Center(child: Text(track?"TRACK":"REPORT",style: SensfixStyles.textwithgrayand14sizeandNormal(SensfixStyles.white),)), color: Color(track?0xff96C800:0xffD55251),),
        ),

        appBar:    AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title:InkWell(
            onTap: (){
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero, constraints: BoxConstraints(),
                      icon: Icon(Icons.arrow_back_ios, color: Color(0xff007AFF),size: 22,),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text("Air Conditioner", style: SensfixStyles.textwithgrayand17sizeandNormal( Color(0xff007AFF)),)
                    // Your widgets here
                  ],
                ),
              ],
            ),
          ),),

        body:
     track==false?  Container(
         color: Color(0xffF2F5FA),
         child: Column(children: [_jopbInfo(),

    Stack(
    alignment: Alignment.bottomRight,
    children: [

      Container(
          margin: EdgeInsets.all(15),
          child: Expanded(
              child: SizedBox(
                height: 200,
                child:
                TextField(
                  textAlign: TextAlign.start,
style: SensfixStyles.textwithgrayand16sizeandNormal(Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 240.0,horizontal: 10),

                      enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),

                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Color(0x609CB1CD)),
                      ),focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Color(0x609CB1CD)),
                  ),

                      filled: true,
                      hintText: "Type in your text",
                      fillColor: Color(0xffffffff)),
                ),
              )


          ),
      ),
     Container(
           margin: EdgeInsets.all(25),
           child: Image(
            height: 20,
            width: 20,
            image:AssetImage("assets/images/mic.png")))]),
           Container(
               height: 50,
               width: double.infinity,
margin: EdgeInsets.only(left: 15,right: 15, top: 5),
               decoration: BoxDecoration(
                   color: Colors.white,

                   border: Border.all(
                color:Color(0x609CB1CD),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
             child:
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [ Image(
                 height: 20,
                 width: 20,
                 image:AssetImage("assets/images/attachment.png")), SizedBox(width: 20,),Text("Attach Image / Video", style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff2F4858)),)],)
    )
           ,
   





         ]),
       ):Container(
       width: double.infinity,
         color: Color(0xffF1F5FB),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

         children: [
           Image(
               height: 200,
               width: 200,
               image:AssetImage("assets/images/submited.png")),
        SizedBox(height: 30,),
        Text("Submitted successfully!", style: SensfixStyles.textwithgrayand20sizeandBold(Color(0xff000000)))
         ]
       )),);

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

}
