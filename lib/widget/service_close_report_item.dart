
import 'package:flutter/material.dart';
import 'package:sensfix/utils/theme/theme.dart';
class ServiceCloseReportItem extends StatefulWidget {
  final int index;
  const ServiceCloseReportItem({Key? key, required this.index}) : super(key: key);

  @override
  _ServiceCloseReportItemState createState() => _ServiceCloseReportItemState();
}

class _ServiceCloseReportItemState extends State<ServiceCloseReportItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Joulon - 1 Day", style: SensfixStyles.textwithgrayand18sizeandBoldsemi(Color(0xff000000)),),  Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Color(widget.index==0?0xff15BA46:widget.index==1?0xffFE7602:widget.index==2?0xffFE0000:0xffFE7602),

                            borderRadius: BorderRadius.circular(5)
                        ),
                        child:
                        Text(widget.index==0?"Approved":widget.index==1?"AM Review":widget.index==2?"Review":"Live",style: SensfixStyles.textwithgrayand10sizeandNormal(SensfixStyles.white))
                    ),

                  ],
                ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("View Details ", style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff000000))),

                      Column(
                        children: [
                          SizedBox(height: 3,),
                          Image(image: AssetImage("assets/images/r_arrow.png"), color: Color(0xff000000),height: 10,width: 10,),
                        ],
                      ),SizedBox(width: 5,),



                    ],),
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
      ),);
  }
}
