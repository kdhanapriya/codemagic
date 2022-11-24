
import 'package:flutter/material.dart';

import '../../utils/theme/theme.dart';
class PolicyFinishScreen extends StatefulWidget {
  const PolicyFinishScreen({Key? key}) : super(key: key);

  @override
  _PolicyFinishScreenState createState() => _PolicyFinishScreenState();
}

class _PolicyFinishScreenState extends State<PolicyFinishScreen> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 50, left: 10,right: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap:(){

                          Navigator.pop(context);
                        },

                          child: Image(image: AssetImage("assets/images/back_arrow.png"), color: Color(0xff000000),height: 15,width: 15,)),
                    SizedBox(height: 30,),
                      Image(image: AssetImage("assets/images/logo_sens.png"), height: 50,width: 150,),

SizedBox(height: 40,),
                      Text("Get in touch if you need any help with our product.",style: SensfixStyles.textwithgrayand25sizeandBold(Color(0xff2F4858)),), SizedBox(height: 5,),

                      SizedBox(height: 30,),
                      Text("USA office:",style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xff2F4858)),), SizedBox(height: 15,),

                    Text("Silicon \nValley Sensfix, \nInc. 3175, Bowers Avenue #3324 Santa Clara, CA 95054 USA",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff2F4858)),), SizedBox(height: 25,),

                   Text("European Office:",style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xff2F4858)),), SizedBox(height: 15,),


                    Text("Poland \nSensfix Sp z. o.o. ul. \nWólczańska 125, 90-521 Łódź, Poland",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff2F4858)),), SizedBox(height: 25,),
 Text("Write to Us",style: SensfixStyles.textwithgrayand14sizeandBold(Color(0xff2F4858)),), SizedBox(height: 5,),

                    Text("support@sensfix.com",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff2F4858)),), SizedBox(height: 25,),




              ]),

          ))]),
        ),
      );

  }
}
