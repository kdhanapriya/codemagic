
import 'package:flutter/material.dart';
import 'package:sensfix/screens/add_report_screen.dart';

import '../utils/theme/theme.dart';
class NewReportScreen extends StatefulWidget {
  const NewReportScreen({Key? key}) : super(key: key);

  @override
  _NewReportScreenState createState() => _NewReportScreenState();
}

class _NewReportScreenState extends State<NewReportScreen> {
  List<String> category=[];
  @override
  void initState() {
category.add("Window");
category.add("Chain Motor");
category.add("PIR motion sensor");
category.add("Magnetic Contact");
category.add("CO2 detector");
category.add("Smoke detector");
category.add("Gateway");
category.add("Lighting");
category.add("Wind & Rain detector");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFAFDFF),
      padding: EdgeInsets.only(top: 20, left: 15,right: 15),
      child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [ Text(" Select an Asset", style:  SensfixStyles.textwithgrayand22sizeandBold(SensfixStyles.black),),
     SizedBox(height: 10,),
      Expanded(
        child: GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  childAspectRatio: (6/ 4),
              crossAxisCount: 2,crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (_, index) => _reportCategory(category[index]),
          itemCount: category.length,
        ),
      ),

        ]),
    );
  }

  Widget _reportCategory(String title)
  {
   return
     InkWell(
       onTap: (){
         Navigator.push(context,
             MaterialPageRoute(builder:
                 (context) =>
                 AddReportScreen()
             ));
       },
       child: Container(
         height: 150,
         width: double.infinity,
         child: Card(
            shape: RoundedRectangleBorder(
           side: BorderSide(
           color: Color(0x5096C800), //<-- SEE HERE
  ),
  borderRadius: BorderRadius.circular(30.0),
  ),
         child: Container(
           padding: EdgeInsets.only(left: 15,right: 15,),
           child: Column(
mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [Image(image:AssetImage ("assets/images/report_cat_img.png"), height: 40,width: 50, )  ,Text(" "+title,style: SensfixStyles.textwithgrayand14sizeandsemiNormal(Color(0xff000000)),)],),
         ),
   ),
       ),
     );
  }
}
