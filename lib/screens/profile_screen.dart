
import 'package:flutter/material.dart';
import 'package:sensfix/utils/theme/theme.dart';

import 'package:sensfix/globals.dart' as globals;
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF1F5FB),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [

          Stack(
            alignment: Alignment.center,
            children: [
            Column(children: [
              Container(
                child: Image(image: AssetImage("assets/images/profile_bg.png"), height: 150,fit: BoxFit.fill,)),Container(

                height: globals.apptitle=="Sensfix Service"?150:100,
                width: double.infinity,
                margin: EdgeInsets.only(left: 25,right: 25),
                child:
                Card(
                  color: Colors.white,
                ))

            ],),
            Column(children: [SizedBox(height: 70,), ClipRRect(
    borderRadius: BorderRadius.circular(40.0),
    child: SizedBox(
    height: 80,
    width: 80,
    child:Image(image: AssetImage("assets/images/user_1.png")))),SizedBox(height: 10,),Text("Tod Wilson", style: SensfixStyles.textwithgrayand20sizeandBold(Color(0xff000000)),),SizedBox(height: 5,),Visibility(
                visible: globals.apptitle=="Sensfix Service"?true:false,
                child: Text("Electrician", style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0xff021E2F)),)),SizedBox(height: 5,),Visibility(
                visible: globals.apptitle=="Sensfix Service"?true:false,
                child: Text("Departament: 12-23", style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0xff021E2F)),))],)
          ],),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Details", style: SensfixStyles.textwithgrayand15sizeandBold(Color(0xff000000))),
                      SizedBox(height: 3,),
                      Container(width: 30,height: 2,color: Color(0xff96C800),),
                      SizedBox(height: 20,),
                      Row(children: [Image(image: AssetImage("assets/images/landline.png"),height: 16,width: 16,),SizedBox(width: 20,),Text("+1 650-670-0200", style: SensfixStyles.textwithgrayand12sizeandNormal(Color(0xff000000)))],),
 SizedBox(height: 20,),
                      Row(children: [Image(image: AssetImage("assets/images/mail.png"),height: 16,width: 16,),SizedBox(width: 20,),Text("tod.wilson@mail.com", style: SensfixStyles.textwithgrayand12sizeandNormal(Color(0xff348DF5)))],),
 SizedBox(height: 20,),
                      Row(children: [Image(image: AssetImage("assets/images/location.png"),height: 16,width: 16,),SizedBox(width: 20,),Flexible(child: Text("8987 Turner St. Moses Lake 98837, WA, United States", style: SensfixStyles.textwithgrayand12sizeandNormal(Color(0xff000000))))],)

                  ],),
                ),
              ),
            )
    ],),
          Visibility(
            visible:   globals.apptitle=="Sensfix Service"?true:false,
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 50,right: 50, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),

                        border: Border.all(
                          color:Color(0xffD65151),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [ Text("Logout", style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xffD65151)),)],)
                ),
                SizedBox(height: 50,)
              ],
            ),
          )

        ],
      ),);
  }
}
