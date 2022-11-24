

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sensfix/screens/chat_participant_screen.dart';

import '../model/chat_sample_model.dart';
import '../utils/theme/theme.dart';
class ChatListItem extends StatefulWidget {
final  ChatSampleModel chatSampleModel;
   ChatListItem( {required this.chatSampleModel}) {


   }


  @override
  _ChatListItemState createState() => _ChatListItemState();
}

class _ChatListItemState extends State<ChatListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFBFDFF),
      padding: EdgeInsets.only(bottom: 0),
      child:widget.chatSampleModel.messageType=="left"?_leftWidget():
      _rightWidget(),
     );
  }
  Widget _headWidget()
  {
    return Stack(
      alignment: Alignment.center,
      children: [Container(height: 1,color: Color(0xffB4D5FB),), Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Color(0xffECECEC), //<-- SEE HERE
          ),
        ),
        child:
    Container(

        padding: EdgeInsets.only(left: 10, right: 10, top: 7,bottom: 7),
        child: Text("Friday, March 13th", style: SensfixStyles.textwithgrayand11sizeandBold(Color(0x901D1C1D)),)),)],);
  }
 Widget _leftWidget()
  {
    return  Column(
      children: [
        _headWidget(),
        Container(
          padding: EdgeInsets.all(15),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(

                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          ChatParticipantScreen()
                      ));

                },
                child: Image(
                    height: 35,
                    width: 35,
                    image:AssetImage("assets/images/left_profile.png")),
              ),
              SizedBox(width: 7,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Flexible(child: Text(widget.chatSampleModel.name!=null?widget.chatSampleModel.name!:"",style:SensfixStyles.textwithgrayand14sizeandBold(Color(0xff808645)) ,
                        )),SizedBox(width: 5,),Flexible(child: Text(widget.chatSampleModel.time!=null?widget.chatSampleModel.time!:"",style:SensfixStyles.textwithgrayand11sizeandNormal(Color(0x701D1C1D)))),

                        ]),
                  SizedBox(height: 7,),
//
                  Text(widget.chatSampleModel.message!=null?widget.chatSampleModel.message!:"",style:SensfixStyles.textwithgrayand14sizeandNormal(SensfixStyles.black),
                  ), SizedBox(height: 10,),
                    widget.chatSampleModel.attachmentFile!=null?SizedBox(
  height: widget.chatSampleModel.attamentType == "IMG"?100:60,
  child:
  ListView.builder(
        padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true, physics: AlwaysScrollableScrollPhysics(),
          itemCount: widget.chatSampleModel.attachmentFile!.length,
          itemBuilder: (BuildContext ctx, int index) {
            return widget.chatSampleModel.attamentType == "IMG" ?
            _imageWidget(widget.chatSampleModel.attachmentFile![index]) :_docsWidget(widget.chatSampleModel.attachmentFile![index]);
          }

)):SizedBox(height: 0,),
                    widget.chatSampleModel.attachmentFile!=null? SizedBox(height: 5,):SizedBox(height: 0,),
                    widget.chatSampleModel.attachmentFile!=null?  Text(widget.chatSampleModel.attachmentFile!.length>1?"${widget.chatSampleModel.attachmentFile!.length} Files":widget.chatSampleModel.attachmentFile![0].filename!,style:SensfixStyles.textwithgrayand12sizeandNormal(Color(0x801D1C1D)) ):SizedBox(height: 0,),


                  ],),
              )])),
      ],
    );
  }
  Widget _rightWidget()
  {
    return  Container(
      padding: EdgeInsets.all(15),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Flexible(child: Text(widget.chatSampleModel.time!=null?widget.chatSampleModel.time!:"",style:SensfixStyles.textwithgrayand11sizeandNormal(Color(0x701D1C1D)))),SizedBox(width: 5,),Flexible(child: Text(widget.chatSampleModel.name!=null?widget.chatSampleModel.name!:"",style:SensfixStyles.textwithgrayand14sizeandBold(Color(0xff808645)) ,
                    )),

                    ]),
                SizedBox(height: 7,),
//
                Text(widget.chatSampleModel.message!=null?widget.chatSampleModel.message!:"",textAlign:TextAlign.end,style:SensfixStyles.textwithgrayand14sizeandNormal(SensfixStyles.black),
                ), SizedBox(height: 10,),
                widget.chatSampleModel.attachmentFile!=null?SizedBox(
                    height: widget.chatSampleModel.attamentType == "IMG"?100:60,
                    child:ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true, physics: AlwaysScrollableScrollPhysics(),
                        itemCount: widget.chatSampleModel.attachmentFile!.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return widget.chatSampleModel.attamentType == "IMG" ?
                          _imageWidget(widget.chatSampleModel.attachmentFile![index]) :_docsWidget(widget.chatSampleModel.attachmentFile![index]);
                        }

                    )):SizedBox(height: 0,),
                widget.chatSampleModel.attachmentFile!=null? SizedBox(height: 5,):SizedBox(height: 0,),
                widget.chatSampleModel.attachmentFile!=null?  Text(widget.chatSampleModel.attachmentFile!.length>1?"${widget.chatSampleModel.attachmentFile!.length} Files":widget.chatSampleModel.attachmentFile![0].filename!,style:SensfixStyles.textwithgrayand12sizeandNormal(Color(0x801D1C1D)) ):SizedBox(height: 0,),


              ],),
          ),
          SizedBox(width: 7,),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:
                      (context) =>
                      ChatParticipantScreen()
                  ));

            },
            child: Image(
                height: 35,
                width: 35,
                image:AssetImage("assets/images/left_profile.png")),
          ),

        ]));
  }
  Widget _imageWidget(AttachmentFile attachmentFile)
  {
    return Container(
      height: 100,
      padding: EdgeInsets.only(right: 15),
      child: Image(
          height: 100,
          width: widget.chatSampleModel.attachmentFile!.length>1?120: 200,
          image:AssetImage(attachmentFile.file!)),
    );
  }
  Widget _docsWidget(AttachmentFile attachmentFile)
  {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(
            color: Color(0xff9CB1CD),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      padding: EdgeInsets.only(right: 10, left: 5,top: 5),
      margin: EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
              height: 50,
              width: 50,
              image:AssetImage("assets/images/docs_image.png")),
          SizedBox(width: 10,),
          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
            Text(attachmentFile.filename!, style:SensfixStyles.textwithgrayand15sizeandBold(SensfixStyles.black) ),
            Text("MS Word Document" ,style:SensfixStyles.textwithgrayand11sizeandNormal(Color(0x60000000)) ),

          ],)
        ],
      ),
    );
  }
}
