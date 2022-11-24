

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sensfix/screens/service/policy_finish_screen.dart';

import '../../utils/theme/theme.dart';
class PrivacyPloicy extends StatefulWidget {
  const PrivacyPloicy({Key? key}) : super(key: key);

  @override
  _PrivacyPloicyState createState() => _PrivacyPloicyState();
}

class _PrivacyPloicyState extends State<PrivacyPloicy> {
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
                    Text("Privacy Policy", style: SensfixStyles.textwithgrayand18sizeandNormal(Color(0xffffffff)),)
                    // Your widgets here
                  ],
                ),

              ],
            ),
          ),),

        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SENSFIX, INC. TERMS OF USE",style: SensfixStyles.textwithgrayand22sizeandBold(Color(0xff2F4858)),), SizedBox(height: 5,),
                Text("Effective as of January 01, 2020",style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff9CB1CD)),), SizedBox(height: 15,),

                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("01.INTRODUCTION",style: SensfixStyles.textwithgrayand16sizeandsemiBold(Color(0xff000000)),),
                      InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context) =>
                                    PolicyFinishScreen()
                                ));
                          },
                          child: Image(image: AssetImage("assets/images/r_arrow_1.png"), color: Color(0xffA2B6D0),height: 15,width: 15,))
                    ],),
                ), SizedBox(height: 15,),
                Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),
                RichText(
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                    style:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                    children: <TextSpan>[
                      TextSpan(text: '\nThese Terms of Use (“Agreement” or “Terms of Use”) are a legally binding agreement between you (the “User,” “you,” or “your”) and Sensfix, Inc. (“Sensfix,” “we,” “us,” “our”). You acknowledge and agree that your use of the Sensfix platform (the “Platform”) through Sensfix’s website at https://www.sensfix.com (the “Website”) will be governed by this Agreement, our Privacy Policy, and any related terms. \n\nIf you are unsure as to the terms of this Agreement, please do not proceed further and contact us at media@sensfix.com. \n\nYour use of our Platform shall constitute your acceptance of this Agreement and to all of the terms and conditions stated under this Agreement and our '),
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

                Text("\n\nPLEASE READ THE TERMS CONTAINED IN THIS AGREEMENT CAREFULLY TO ENSURE THAT YOU UNDERSTAND EACH PROVISION. PLEASE NOTE THAT THESE TERMS CONTAIN A BINDING AND MANDATORY ARBITRATION PROVISION AND CLASS ACTION/JURY TRIAL WAIVER PROVISION THAT REQUIRES THE USE OF ARBITRATION ON AN INDIVIDUAL BASIS TO RESOLVE DISPUTES, RATHER THAN JURY TRIALS OR CLASS ACTIONS AND LIMITS REMEDIES AVAILABLE TO YOU IN THE EVENT OF CERTAIN DISPUTES. \n\nBY ACCEPTING THIS AGREEMENT, EITHER BY CLICKING A BOX INDICATING YOUR ACCEPTANCE OR BY USING AND NAVIGATING THROUGH OUR PLATFORM THROUGH OUR WEBSITE AND/OR APP, YOU AGREE THAT (A) YOU HAVE READ AND UNDERSTOOD THE AGREEMENT; (B) REPRESENT THAT YOU ARE AT LEAST 18 YEARS OLD; (C) YOU CAN FORM A BINDING CONTRACT; AND (D) YOU ACCEPT THIS AGREEMENT AND AGREE THAT YOU ARE LEGALLY BOUND BY ITS TERMS AS WELL AS OUR PRIVACY POLICY REFERENCED HEREIN. \n\nIF YOU ARE ENTERING INTO THIS AGREEMENT ON BEHALF OF A COMPANY OR OTHER LEGAL ENTITY, YOU REPRESENT THAT YOU HAVE THE AUTHORITY TO BIND SUCH ENTITY AND ITS AFFILIATES TO THESE TERMS AND CONDITIONS, IN WHICH CASE THE TERMS “YOU” OR “YOUR” SHALL REFER TO SUCH ENTITY AND ITS AFFILIATES. IF YOU DO NOT HAVE SUCH AUTHORITY, OR IF YOU DO NOT AGREE WITH THIS AGREEMENT, YOU MUST NOT ACCEPT THIS AGREEMENT AND MAY NOT USE OUR WEBSITE, APP, AND/OR PLATFORM. Capitalized terms not defined herein shall have the same meaning ascribed to them under our Privacy Policy.",style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)),), SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20,top: 20),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("02.INFORMATION WE COLLECT AND RECEIVE",style: SensfixStyles.textwithgrayand16sizeandsemiBold(Color(0xff000000)),)),
                        Image(image: AssetImage("assets/images/r_arrow_1.png"), color: Color(0xffA2B6D0),height: 15,width: 15,)
                      ],),
                  ),
                ), SizedBox(height: 15,),
                Container(height: 1,color: Color(0x809CB1CD),width:MediaQuery.of(context).size.width),
                RichText(
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                    style:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                    children: <TextSpan>[
                      TextSpan(text: '\nWe collect the following information from you, which is collectively referred to as Personal Information'),
                      TextSpan(
                          text: '(“Personal Information”)',
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

    TextSpan(text: 'which includes Customer Data as defined below, as this information identifies you as an individual. \n\nNote that Personal Information is commonly referred to as personal information or personally identifiable information (the “PII”) in the US and as Personal Data in Europe. Throughout this Privacy Policy, we will refer to such information as Personal Information, unless a statutory definition otherwise applies. '),
                      TextSpan(
                          text: '\n\nA. Customer Data',
                          style:TextStyle(
                              fontFamily: "Proxima Nova",  decorationColor: Colors.black,fontWeight: FontWeight.bold
                          )),
                      TextSpan(text: "\n\nContent and information submitted by you to register or access our website and/or use our Services is referred to in this Privacy Policy as Customer Data (the “Customer Data”, which is included under Personal Information). Customer Data includes any information that describes you as an individual including name, email address, phone number, business address, title, IP address, employer, etc. Customer Data is controlled by the entity, usually an employer but sometimes an individual that is authorized to use the Platform (the “Customer”). Under the European Union’s Regulation (EU) 2016/679, General Data Protection Regulation (“GDPR”), you will be the “Controller,” as defined in the GDPR, of the Personal Information of your European employees and/or European residents or visitors, who access our Platform on your behalf, and we will be the “Processor,” as defined in the GDPR, of such Personal Information."),
 TextSpan(
                          text: '\n\nB. Other Information',
                          style:TextStyle(
                              fontFamily: "Proxima Nova",  decorationColor: Colors.black,fontWeight: FontWeight.bold
                          )),
                      TextSpan(text: "\n\nSensfix may also collect and receive the following information: \n\ni. Sensfix Service Lifecycle Management Platform. When a Customer uses Sensfix Platform and our Services, we may collect an email address, name, photo, domain details, user name for the individual setting up the instance, and password. \n\nii. Services Usage Information. This is information about how you are accessing and using the Services, which may include administrative and support communications with us and information about the instances, channels, people, features, content, and links you interact with, and what third party content, assessments and integrations that you use (if any). \n\niii. Contact Information. With your permission, any contact information you choose to import is collected (such as an address book from a device) when using the Services."),

                    ],
                  ),
                ),

              ],),
          ),


        ));

  }
}
