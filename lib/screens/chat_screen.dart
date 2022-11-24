
import 'package:flutter/material.dart';
import 'package:sensfix/model/chat_sample_model.dart';
import 'package:sensfix/widget/chat_list_item.dart';

import '../widget/my_report_list_item.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatSampleModel> chatData=[];
  @override
  void initState() {
    // TODO: implement initState

        ChatSampleModel chatSampleModel = ChatSampleModel();
        chatSampleModel.name="Asset_Manager";
        chatSampleModel.time = "06:25 PM";
        chatSampleModel.message = "@Vivek M, @Gagandeep Singh and @Nikunj Jariwala are implementing our new designs.";
        chatSampleModel.attachment = false;
        chatSampleModel.messageType="left";
        chatData.add(chatSampleModel);
        ChatSampleModel chatSampleModel1 = ChatSampleModel();
        chatSampleModel1.name="Asset_Manager";
        chatSampleModel1.time = "06:25 PM";
        chatSampleModel1.message = "@Vivek M, @Gagandeep Singh and @Nikunj Jariwala are implementing our new designs.";
        chatSampleModel1.attachment = true;
        chatSampleModel1.messageType="left";

        chatSampleModel1.attamentType="IMG";
        AttachmentFile attachmentFile=AttachmentFile();
        attachmentFile.filename="sens-chat-ux.jpg";
        attachmentFile.file="assets/images/sample_img_1.png";
        List<AttachmentFile> attachment=[];
        attachment.add(attachmentFile);
        chatSampleModel1.attachmentFile=attachment;
        chatData.add(chatSampleModel1);
        ChatSampleModel chatSampleModel2 = ChatSampleModel();
        chatSampleModel2.name="Korea1";
        chatSampleModel2.time = "06:25 PM";
         chatSampleModel2.attamentType="IMG";
        chatSampleModel.messageType="right";

        chatSampleModel2.message = "@Vivek M, @Gagandeep Singh and @Nikunj Jariwala are implementing our new designs.";
        chatSampleModel2.attachment = true;
        AttachmentFile attachmentFile1=AttachmentFile();
        attachmentFile1.filename="sens-chat-ux.jpg";

        attachmentFile1.file="assets/images/sample_img_2.png";
       AttachmentFile attachmentFile2=AttachmentFile();
        attachmentFile2.filename="sens-chat-ux.jpg";
        attachmentFile2.file="assets/images/sample_img_3.png";
        List<AttachmentFile> attachment1=[];
        attachment1.add(attachmentFile1);
        attachment1.add(attachmentFile2);
        chatSampleModel2.attachmentFile=attachment1;
        chatData.add(chatSampleModel2);

        ChatSampleModel chatSampleModel3 = ChatSampleModel();
        chatSampleModel3.name="Asset_Manager";
        chatSampleModel3.time = "06:25 PM";
        chatSampleModel3.messageType="left";

        chatSampleModel3.message = "@Vivek M, @Gagandeep Singh and @Nikunj Jariwala are implementing our new designs.";
        chatSampleModel3.attachment = true;
        chatSampleModel3.attamentType="DOC";
        List<AttachmentFile> attachment2=[];
attachment2.add(AttachmentFile(filename: "Sepcs"));
attachment2.add(AttachmentFile(filename: "Sepcs"));
        chatSampleModel3.attachmentFile = attachment2;
        chatData.add(chatSampleModel3);


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 20,right: 10),
        height: 110,child:
      Row(

        children: [
          Expanded(
            child: SizedBox(
              height: 55,
              child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10,right: 10),
          suffixIconConstraints: BoxConstraints(
          minHeight: 20,
          minWidth: 44
      ),
          suffixIcon:Image(
                height: 20,
                width: 20,
                image:AssetImage("assets/images/plus.png")),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),

              // width: 0.0 produces a thin "hairline" border
              borderSide: const BorderSide(color: Color(0xffF6F8FF)),
          ),focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),

              // width: 0.0 produces a thin "hairline" border
              borderSide: const BorderSide(color: Color(0xffF6F8FF)),
          ),
        
        filled: true,
        hintText: "Type in your text",
        fillColor: Color(0xffF6F8FF)),
    ),
            )


          ),
          SizedBox(width: 30,),

          Image(
              height: 30,
              width: 30,
              image:AssetImage("assets/images/send_button.png")),
          SizedBox(width: 10,),

        ],
      ),),
      body: Container(
        color: Color(0xffFBFDFF),

        child: ListView.builder(
             itemCount: chatData.length,
            itemBuilder: (BuildContext ctx, int index) {
              return  ChatListItem(chatSampleModel:chatData[index]);
            })

          ),
    );
  }
}
