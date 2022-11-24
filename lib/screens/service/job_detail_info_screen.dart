
import 'package:flutter/material.dart';
import 'package:sensfix/utils/theme/theme.dart';
class JobDetailsInfoScreen extends StatefulWidget {
  const JobDetailsInfoScreen({Key? key}) : super(key: key);

  @override
  _JobDetailsInfoScreenState createState() => _JobDetailsInfoScreenState();
}

class _JobDetailsInfoScreenState extends State<JobDetailsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
    icon: Icon(Icons.arrow_back_ios, color: Color(0xff000000),size: 22,),
    onPressed: () => Navigator.of(context).pop(),
    ),
    Text("Joulon - 1 Day", style: SensfixStyles.textwithgrayand17sizeandNormal( Color(0xff000000)),)
    // Your widgets here
    ],
    ),
    ],
    ),
    ),),

    body:Container(
      color: Color(0xffF4F7FA),
        padding: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 10),
        child:
    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      Card(child:
      Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [Text("Crew Team",style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xff000000)),),
        Container(height: 2,width: 40,color:SensfixStyles.appcolor),
         SizedBox(height: 10,),
          Row(children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image(
                  fit: BoxFit.fill,
                   image:AssetImage("assets/images/user_1.png")),
            ),),
            SizedBox(width: 10,), ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image(
                  fit: BoxFit.fill,
                   image:AssetImage("assets/images/user_1.png")),
            ),),
            SizedBox(width: 10,), ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image(
                  fit: BoxFit.fill,
                   image:AssetImage("assets/images/user_1.png")),
            ),),
            SizedBox(width: 10,), ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image(
                  fit: BoxFit.fill,
                   image:AssetImage("assets/images/user_1.png")),
            ),),
            SizedBox(width: 10,),
          ],)

        ],),
      ),),
      SizedBox(height: 10,),
    Card(child: Container(
      padding: EdgeInsets.all(15),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [Text("Job Info",style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xff000000)),),
      Container(height: 2,width: 30,color:SensfixStyles.appcolor),
       SizedBox(height: 10,),
        Text("Job ID",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("1D-St1",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Service",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("Oil optimum level",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Asset ID",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("SF-OG-IND-ONG-01",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Asset Name",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("Top Drive",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Location",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("400702, ONGC Uran Refinery, Uran, Maharashtra, India",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Job Type",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("Regular",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("Start Time",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("16.03.2020 14:00",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),
Text("End Time",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("16.03.2020 15:50",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),

Text("Job Description",style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x40021E2F)),),
        SizedBox(height: 3,),
        Text("Check the oil level for optimum level",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff021E2F)),),

        SizedBox(height: 12,),




      ],),
    ),)])));
  }
}
