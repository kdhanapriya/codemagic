
import 'package:flutter/material.dart';
import 'package:sensfix/widget/block_chain_log_items.dart';
class BlockChainLogScreen extends StatefulWidget {
  const BlockChainLogScreen({Key? key}) : super(key: key);

  @override
  _BlockChainLogScreenState createState() => _BlockChainLogScreenState();
}

class _BlockChainLogScreenState extends State<BlockChainLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),

      height: double.infinity,
     color: Color(0xffF2F5FA),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,

        itemBuilder: (context, index) {
          return BlockChainListItem();
        }
    ),);
  }

}
