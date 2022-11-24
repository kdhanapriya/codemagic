
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';
class AttachmentScreen extends StatefulWidget {
  const AttachmentScreen({Key? key}) : super(key: key);

  @override
  _AttachmentScreenState createState() => _AttachmentScreenState();
}

class _AttachmentScreenState extends State<AttachmentScreen> {
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
                      icon: Icon(Icons.arrow_back_ios, color: SensfixStyles.appcolor,size: 22,),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text("Attachments", style: SensfixStyles.textwithgrayand17sizeandNormal(Color(0xff96C800)),)
                    // Your widgets here
                  ],
                ),
              ],
            ),
          ),),

        body:
        Container(
          color: Color(0xffF2F5FA),
          padding: EdgeInsets.all(15),
          child: GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  childAspectRatio: (3.5/ 4),
                crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (_, index) => _attachmentItem(),
            itemCount: 5,
          ),
        ));
  }
  _attachmentItem()
  {
    return Card(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child:
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                height: 120,
                child: Image(
                  fit: BoxFit.fill,

                image:AssetImage("assets/images/sample_img_1.png")),
              ),),
        ),
        SizedBox(height: 5,),
        Container(
            padding: EdgeInsets.only(left: 10, right: 10,top: 10),
            child: Text("sens-chat-ux.jpg", style: SensfixStyles.textwithgrayand15sizeandBold(SensfixStyles.black),)),
 Container(
            padding: EdgeInsets.only(left: 10, right: 10,top: 2),
            child: Text("Today at 12:53 PM", style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0x801D1C1D)),))

      ],
    ),);
  }
}
