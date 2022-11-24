
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';
class BlockChainListItem extends StatefulWidget {
  const BlockChainListItem({Key? key}) : super(key: key);

  @override
  _BlockChainListItemState createState() => _BlockChainListItemState();
}

class _BlockChainListItemState extends State<BlockChainListItem> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 5,left: 10,right: 10),

      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0x80B4D5FB), //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15),
            child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image(
                            fit: BoxFit.fill,
color: Color(0xff12BA46),
                            image:AssetImage("assets/images/tick.png")),
                      ),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(left: 16.0),
                              width: MediaQuery.of(context).size.width*0.7,

                              child: Text("Paul Clarke (Asset Manager) approved job. Air conditioner settings reset; temperature setting is working fine.",style: SensfixStyles.textwithgrayand16sizeandSemiBold(SensfixStyles.black))),

                         SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.only(left: 16.0),
                            width: MediaQuery.of(context).size.width*0.79,

                            child:  Text("01:00 PM, 23rd Mar 2020",style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0x702F4858))))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(height: 1,color:Color(0x30348DF5))
              ],
            )),
      ),
    );

  }
}
