
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensfix/screens/service/service_dashboard_screen.dart';
import 'package:sensfix/screens/service/workflow_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';

import 'package:sensfix/globals.dart' as globals;
import 'homescreen.dart';
class LoginScreen extends StatefulWidget {
    const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController =  TextEditingController();

@override
  void initState() {
     super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title:


        Container(
          height: 22,
          width: 100,

          child: Image(

              image:AssetImage("assets/images/Layer_x0020_1@2x.png")),
        ),),
        body:
        Container(
          color: Color(0xffF4F7FA),
padding: EdgeInsets.only(left: 20,right: 20, top: 40),
          child: Column(
            children: [
              Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image(

                        image:AssetImage("assets/images/card_bg.png"),

                      ),
                    ),
    //           Container(
    //            decoration: const BoxDecoration(
    //
    //              image: DecorationImage(
    //               image: AssetImage("assets/images/card_bg.png"),
    //               fit: BoxFit.fitHeight,
    //             ),
    //           ),
    //           child: Text("")
    //   /* add child content here */
    // ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  // width: double.infinity,

                  padding: EdgeInsets.only(top:15,left: 30,right: 30),
child: Column(children: [
  const SizedBox(height: 65,),
  Image(
    image:AssetImage("assets/images/logo_sens.png"),
    height: 40,
    width: 180,
  ),
  const SizedBox(height: 20,),
   Align(
      alignment: Alignment.centerLeft,
      child: Text("Email ID",style: SensfixStyles.textwithgrayand15sizeandNormal(SensfixStyles.black),)),
  const SizedBox(height: 10,),
   SizedBox(
     height: 40,
     child: TextField(
               textAlignVertical: TextAlignVertical.center,

               controller: usernameController,

      decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 10),

              border:  OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.grey)),
              hintText: 'example@sensfix.com',

  )
  ),
   ),  const SizedBox(height: 20,),
   Align(
      alignment: Alignment.centerLeft,
      child: Text("Password",style: SensfixStyles.textwithgrayand15sizeandNormal(SensfixStyles.black))),
  const SizedBox(height: 10,),
   SizedBox(
     height: 40,
     child: TextField(
               textAlignVertical: TextAlignVertical.center,

               controller: usernameController,

      decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 10),

              border:  OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.grey)),
              hintText: 'Enter Password',

  )
  ),
   ), SizedBox(height: 10,), Align( alignment: Alignment.centerRight,  child: Text("Forgot Password?",textAlign: TextAlign.end, style: TextStyle(fontSize: 17,color: SensfixStyles.darkappcolor,decoration: TextDecoration.underline,fontFamily: SensfixStyles.font),)),const SizedBox(height: 45,),
                  SizedBox(
                    height: 45,
                    width: 260,
                    child: TextButton(

                      onPressed: () {

                        var username= usernameController.text.toLowerCase();

                    if(globals.apptitle=="Sensfix Service") {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              ServiceDashboardScreen()
                          ));
                    // }
                    //
                    //     else{
                    //       errorMsgDialog(context,"Enter Username");
                    //     }
                      }else
                        {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder:
                                  (context) =>
                                  WorkFlowScreen()
                              ));

                        }},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {

                            if (states.contains(MaterialState.pressed)) return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                            return const Color(0xffA4CE06); // Use the component's default.
                          },
                        ),
                      ), child:   Text("Sign In",style: SensfixStyles.textwithgrayand20sizeandNormal(SensfixStyles.white)),),
                  )
],),
                ),
              )
                  ]),
              SizedBox(height: 50,),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("New User? ",textAlign: TextAlign.end, style:  SensfixStyles.textwithgrayand17sizeandNormal(SensfixStyles.black),),SizedBox(width: 10,),Text("Create Login",textAlign: TextAlign.end, style: TextStyle(fontSize: 17,color: SensfixStyles.darkappcolor,decoration: TextDecoration.underline,fontFamily: SensfixStyles.font),)],)
            ],
          ),
        ));
  }
  errorMsgDialog(BuildContext contexts, String message) {
    showCupertinoDialog(
        context: contexts,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text('Sensfix'),
          content: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(message),
          ),
          actions: <Widget>[

            CupertinoDialogAction(
              child: Text(
                'OK',
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.w700),
              ),
              onPressed: () async {
                // await ChatClient.getInstance.chatManager.dele(sid,isDeleteMessage: true,conversationType: ChatConversationType.Chat);
                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: Text("Conversation Deleted"),
                // ));

                Navigator.of(context).pop();




              },
            ),
          ],
        ));
  }

}
