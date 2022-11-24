
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sensfix/screens/service/privacy_policy_screen.dart';

import '../../utils/theme/theme.dart';

class TermsAndConditionsScreens extends StatefulWidget {
  const TermsAndConditionsScreens({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsScreensState createState() => _TermsAndConditionsScreensState();
}

class _TermsAndConditionsScreensState extends State<TermsAndConditionsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:    AppBar(
          backgroundColor: SensfixStyles.appcolor,
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
                      icon: Icon(Icons.arrow_back_ios, color: SensfixStyles.white,size: 22,),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text("Terms and Conditions", style: SensfixStyles.textwithgrayand18sizeandNormal(Color(0xffffffff)),)
                    // Your widgets here
                  ],
                ),

              ],
            ),
          ),),

        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15,top: 15,bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("SENSFIX, INC. TERMS OF USE",style: SensfixStyles.textwithgrayand22sizeandBold(Color(0xff2F4858)),), SizedBox(height: 5,),
              Text("Effective as of January 01, 2020",style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff9CB1CD)),), SizedBox(height: 15,),
                RichText(
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                    style:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                    children: <TextSpan>[
                      TextSpan(text: 'These Terms of Use (“Agreement” or “Terms of Use”) are a legally binding agreement between you (the “User,” “you,” or “your”) and Sensfix, Inc. (“Sensfix,” “we,” “us,” “our”). You acknowledge and agree that your use of the Sensfix platform (the “Platform”) through Sensfix’s website at https://www.sensfix.com (the “Website”) will be governed by this Agreement, our Privacy Policy, and any related terms. \n\nIf you are unsure as to the terms of this Agreement, please do not proceed further and contact us at media@sensfix.com. \n\nYour use of our Platform shall constitute your acceptance of this Agreement and to all of the terms and conditions stated under this Agreement and our '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style:TextStyle(
                              fontFamily: "Proxima Nova",  decorationColor: Colors.black,
                              height: 1.5,

                              decorationThickness: 4,
                              decoration: TextDecoration.underline, color: Color(0xff2F4858), fontSize: 16, fontWeight: FontWeight.normal)  ,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) =>
                                      PrivacyPloicy()
                                  ));
                               }),
                      TextSpan(text: ' referenced herein.'),


                    ],
                  ),
                ),

                Text("\n\nPLEASE READ THE TERMS CONTAINED IN THIS AGREEMENT CAREFULLY TO ENSURE THAT YOU UNDERSTAND EACH PROVISION. PLEASE NOTE THAT THESE TERMS CONTAIN A BINDING AND MANDATORY ARBITRATION PROVISION AND CLASS ACTION/JURY TRIAL WAIVER PROVISION THAT REQUIRES THE USE OF ARBITRATION ON AN INDIVIDUAL BASIS TO RESOLVE DISPUTES, RATHER THAN JURY TRIALS OR CLASS ACTIONS AND LIMITS REMEDIES AVAILABLE TO YOU IN THE EVENT OF CERTAIN DISPUTES. \n\nBY ACCEPTING THIS AGREEMENT, EITHER BY CLICKING A BOX INDICATING YOUR ACCEPTANCE OR BY USING AND NAVIGATING THROUGH OUR PLATFORM THROUGH OUR WEBSITE AND/OR APP, YOU AGREE THAT (A) YOU HAVE READ AND UNDERSTOOD THE AGREEMENT; (B) REPRESENT THAT YOU ARE AT LEAST 18 YEARS OLD; (C) YOU CAN FORM A BINDING CONTRACT; AND (D) YOU ACCEPT THIS AGREEMENT AND AGREE THAT YOU ARE LEGALLY BOUND BY ITS TERMS AS WELL AS OUR PRIVACY POLICY REFERENCED HEREIN. \n\nIF YOU ARE ENTERING INTO THIS AGREEMENT ON BEHALF OF A COMPANY OR OTHER LEGAL ENTITY, YOU REPRESENT THAT YOU HAVE THE AUTHORITY TO BIND SUCH ENTITY AND ITS AFFILIATES TO THESE TERMS AND CONDITIONS, IN WHICH CASE THE TERMS “YOU” OR “YOUR” SHALL REFER TO SUCH ENTITY AND ITS AFFILIATES. IF YOU DO NOT HAVE SUCH AUTHORITY, OR IF YOU DO NOT AGREE WITH THIS AGREEMENT, YOU MUST NOT ACCEPT THIS AGREEMENT AND MAY NOT USE OUR WEBSITE, APP, AND/OR PLATFORM. \n\nCapitalized terms not defined herein shall have the same meaning ascribed to them under our Privacy Policy.",style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)),), SizedBox(height: 15,),
            ],),
          ),


        ));

  }
}
