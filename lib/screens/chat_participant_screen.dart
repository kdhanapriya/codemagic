

import 'package:flutter/material.dart';
import 'package:sensfix/screens/attachment_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';
class ChatParticipantScreen extends StatefulWidget {
  const ChatParticipantScreen({Key? key}) : super(key: key);

  @override
  _ChatParticipantScreenState createState() => _ChatParticipantScreenState();
}

class _ChatParticipantScreenState extends State<ChatParticipantScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
                  icon: Icon(Icons.arrow_back_ios, color: SensfixStyles.appcolor,size: 22,),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Text("Carrier - 30GXR249", style: SensfixStyles.textwithgrayand17sizeandNormal(Color(0xff96C800)),)
                // Your widgets here
              ],
            ),
//            Row(children: [
//              Container(
//                height: 35,
//                  width: 35,
//                  padding: EdgeInsets.all(10),
//                  decoration: BoxDecoration(
// color: Color(0x2096C800),
//                      borderRadius: BorderRadius.all(Radius.circular(10))
//                  ),
//                  child:   Image(
//                        image:AssetImage("assets/images/search.png")),
//              ),
//              SizedBox(width: 10,),Container(
//                height: 35,
//                  width: 35,
//                  padding: EdgeInsets.all(10),
//                  decoration: BoxDecoration(
// color: Color(0x2096C800),
//                      borderRadius: BorderRadius.all(Radius.circular(10))
//                  ),
//                  child:   Image(
//                        image:AssetImage("assets/images/info.png")),
//              )
//            ],)
          ],
        ),
      ),),

        body: Container(
          color:Color(0xffF2F5FA),
          child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 50, width: double.infinity,child: Align(
              alignment: Alignment.centerLeft,
              child: Text("3 Participants", style: SensfixStyles.textwithgrayand16sizeandNormal(SensfixStyles.black),)),

          ),
            SingleChildScrollView(
              child: Container(

                child:
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,

                    itemBuilder: (context, index) {
                    return _participantListItem(2,index);
                  }
                  ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) =>
                        AttachmentScreen()
                    ));

              },
              child: Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 15),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Attachments",style: SensfixStyles.textwithgrayand15sizeandBold(SensfixStyles.black),),SizedBox(width: 10,), Container(
                      padding: EdgeInsets.all(12),
                      child: Image(

                          image:AssetImage("assets/images/next.png")),
                    ),],)),
            ),
Container(height: 1,color: Color(0xffE5E3F3),),
Container(
                height: 50,
                padding: EdgeInsets.only(left: 15),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Archived Chats",style: SensfixStyles.textwithgrayand15sizeandBold(SensfixStyles.black),),SizedBox(width: 10,), Container(
                    padding: EdgeInsets.all(16),
                    child: Image(

                        image:AssetImage("assets/images/arrow-left.png")),
                  ),],))



            ],


          ),
        ));
  }
  Widget _participantListItem(int lastindex, int currentIndex)
  {
    print("index ${lastindex}  ${currentIndex}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            color: Colors.white,
            child: Row(children: [
          Image(
            height: 30,
              width: 30,
              image:AssetImage("assets/images/user_1.png")), SizedBox(width: 10,),Text("Paul Clarke",style: SensfixStyles.textwithgrayand16sizeandBold(SensfixStyles.black),),SizedBox(width: 10,),Text("Asset Manager",style: SensfixStyles.textwithgrayand15sizeandNormal(Color(0x601D1C1D)),)
        ],)),Visibility(
          visible: currentIndex==lastindex?true:false,
          child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 15, top: 7, bottom: 5),
              width: double.infinity,
              color: Colors.white,
              child: Text("+ Add Participants",style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff348DF5)),)),
        )

      ],
    );
  }
}
