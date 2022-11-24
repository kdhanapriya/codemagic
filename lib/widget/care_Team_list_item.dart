
import 'package:flutter/material.dart';

import '../screens/service/job_detail_info_screen.dart';
import '../utils/theme/theme.dart';
class CareteamListItem extends StatefulWidget {
  const CareteamListItem({Key? key}) : super(key: key);

  @override
  _CareteamListItemState createState() => _CareteamListItemState();
}

class _CareteamListItemState extends State<CareteamListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(


            onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) =>
                  JobDetailsInfoScreen()
              ));

      },
      child: Container(
          padding: EdgeInsets.only(top: 15,left: 15,right: 15),
          child:
          Column(
            children: [
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
        children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image(
                      fit: BoxFit.fill,

                      image:AssetImage("assets/images/user_1.png")),
                ),),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Assigned",style: SensfixStyles.textwithgrayand18sizeandBold(SensfixStyles.black)),
                  Text("Asset Manager",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0x70021E2F)))
                ],
              )
        ],
      ),
        Row(children: [
              SizedBox(height: 35,width: 35,child: Image(
      fit: BoxFit.fill,

      image:AssetImage("assets/images/message_img.png")),
      ) ,SizedBox(width: 15,),SizedBox(height: 35,width: 35,child: Image(
      fit: BoxFit.fill,

      image:AssetImage("assets/images/call_img.png")),
      ),SizedBox(width: 15,),SizedBox(height: 35,width: 35,child: Image(
      fit: BoxFit.fill,

      image:AssetImage("assets/images/video_img.png")),
      )],)
      ],),
              SizedBox(height: 15,),
              Container(height: 1,color:Color(0x30348DF5))
            ],
          )),
    );
  }
}
