
import 'package:flutter/material.dart';
import 'package:sensfix/screens/options_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';
class ServiceOpenReportItem extends StatefulWidget {
  const ServiceOpenReportItem({Key? key}) : super(key: key);

  @override
  _ServiceOpenReportItemState createState() => _ServiceOpenReportItemState();
}

class _ServiceOpenReportItemState extends State<ServiceOpenReportItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:
                (context) =>
                OptionScreen()
            ));
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 10,right: 10,top: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
            Container(
            height: 65,
            width: 65,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0x2096C800),
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              Text("13", style: SensfixStyles.textwithgrayand20sizeandBold(Color(0xff000000)),),
              SizedBox(height: 2,),
              Text("Feb", style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0xff000000)),)
            ],),),
            SizedBox(width: 15,),
            Expanded(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Joulon - 1 Day", style: SensfixStyles.textwithgrayand18sizeandBoldsemi(Color(0xff000000)),),
               SizedBox(height: 8,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Image(image: AssetImage("assets/images/location.png"), color: Color(0xff808645),height: 14,width: 14,),SizedBox(width: 5,),
                  Flexible(child: Text("Remuda Energy Development, LLC ", style: SensfixStyles.textwithgrayand14sizeandsemiNormal(Color(0xff808645)))),



                ],),
                  SizedBox(height: 15,),
                Container(
                  height: 1,width: double.infinity,
                  color: const Color(0x302774F0),),
                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image(image: AssetImage("assets/images/clock.png"), color: Color(0xff000000),height: 14,width: 14,),SizedBox(width: 5,),
                      Text("8:00 AM - 5:00PM", style: SensfixStyles.textwithgrayand14sizeandsemiNormal(Color(0xff000000))),



                      ],),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/sample_img_1.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all( Radius.circular(15.0)),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color:const Color(0x70000000),


                                borderRadius: BorderRadius.all( Radius.circular(15.0)),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            child: Center(child: Text("+2", style: SensfixStyles.textwithgrayand12sizeandBold(Color(0xffffffff)),))

            ),


                         Positioned(
                              right:25,

                                child:
                                Container(
                           width: 30.0,
                           height: 30.0,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("assets/images/sample_img_1.png"),
                               fit: BoxFit.cover,
                             ),
                             borderRadius: BorderRadius.all( Radius.circular(15.0)),
                             border: Border.all(
                               color: Colors.white,
                               width: 2.0,
                             ),
                           ),
                         ),

            ),Positioned(
                              right: 50,

                                child:
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/sample_img_1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all( Radius.circular(15.0)),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),

                          ), Positioned(
                              right: 75,
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/sample_img_1.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all( Radius.circular(15.0)),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),


                          ),
                        ],),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


              ],),
            ),



            ],),
            SizedBox(height: 10,),
            Container(
              height: 0.5,width: double.infinity,
              color: const Color(0x20404040),),

          ],
        ),),
    );
  }
}
