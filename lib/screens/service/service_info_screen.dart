
import 'package:flutter/material.dart';
import 'package:sensfix/screens/service/privacy_policy_screen.dart';
import 'package:sensfix/screens/service/terms_and_condition_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';
class ServiceInfoScreen extends StatefulWidget {
  const ServiceInfoScreen({Key? key}) : super(key: key);

  @override
  _ServiceInfoScreenState createState() => _ServiceInfoScreenState();
}

class _ServiceInfoScreenState extends State<ServiceInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          SizedBox(height: 10,),
          Column(
          children: [
            Container(
            padding: EdgeInsets.only(left: 70,right: 70, top: 20),
            child: Image(image: AssetImage("assets/images/info_title.png"))), Align(alignment: Alignment.centerRight,
              child: Container(
                  padding: EdgeInsets.only(left: 70,right: 70, top: 20),
                  child: Text("Version 1.0",style: SensfixStyles.textwithgrayand12sizeandNormal(Color(0xff000000)),)),
            ),
          ],
        ),
          SizedBox(height: 10,),

          Column(children: [
      Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),
      SizedBox(height: 15,),
      Container(
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("     Contact Us",style: SensfixStyles.textwithgrayand16sizeandsemiBold(Color(0xff808645)),),
Image(image: AssetImage("assets/images/r_arrow_1.png"), color: Color(0xff9CB1CD),height: 18,width: 18,)
        ],),
      ), SizedBox(height: 15,),
      Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),
 SizedBox(height: 15,),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) =>
                  PrivacyPloicy()
              ));

        },
        child: Container(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("     Privacy Policy",style: SensfixStyles.textwithgrayand16sizeandsemiBold(Color(0xff808645)),),
Image(image: AssetImage("assets/images/r_arrow_1.png"), color: Color(0xff9CB1CD),height: 18,width: 18,)
          ],),
        ),
      ), SizedBox(height: 15,),
      Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),
 SizedBox(height: 15,),
      InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) =>
                  TermsAndConditionsScreens()
              ));
        },
        child: Container(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("     Terms and Conditions",style: SensfixStyles.textwithgrayand16sizeandsemiBold(Color(0xff808645)),),
Image(image: AssetImage("assets/images/r_arrow_1.png"), color: Color(0xff9CB1CD),height: 18,width: 18,)
          ],),
        ),
      ), SizedBox(height: 15,),
      Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),

    ],),
          SizedBox(height: 10,),
          SizedBox(height: 10,),

          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image(image: AssetImage("assets/images/logo_sens.png"), height: 50,width:120,), SizedBox(width: 20,), Container(color: SensfixStyles.appcolor,height: 30, width: 1,),SizedBox(width: 20,),Image(image: AssetImage("assets/images/info_logo.png"), height: 50,width:50,)],)
      ],),);
  }
}
