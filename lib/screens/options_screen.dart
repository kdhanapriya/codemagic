
import 'package:flutter/material.dart';
import 'package:sensfix/screens/block_chain_log_screen.dart';
import 'package:sensfix/screens/careteam_screen.dart';
import 'package:sensfix/screens/job_info_screen.dart';

import 'package:sensfix/globals.dart' as globals;
import 'package:sensfix/screens/service/service_dashboard_screen.dart';
import 'package:sensfix/screens/service/workflow_screen.dart';
import '../utils/theme/theme.dart';
import '../widget/my_report_list_item.dart';
import 'chat_screen.dart';
class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> with SingleTickerProviderStateMixin{

  int _selectedIndex = 0;
  int _tabSelectedIndex = 0;
  bool editEnabled=false;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(vsync: this, length: globals.apptitle=="Sensfix Service"?5:4);

    _controller!.addListener(() {
      setState(() {
        _tabSelectedIndex = _controller!.index;
        _selectedIndex = _tabSelectedIndex;
        print("Selected index $_tabSelectedIndex");
      });
    });
    super.initState();
  }
  TabController? _controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

            backgroundColor: Colors.white,
            titleSpacing: 0,
            bottom:PreferredSize(
                preferredSize: const Size.fromHeight(45.0),
                child: Column(
                  children: [
                    Visibility(
                      visible: editEnabled?false:true,
                      child: Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: InkWell(
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
                          Text("Carrier - 30GXR249", style: SensfixStyles.textwithgrayand18sizeandNormal(Color(0xff96C800)),)
                          // Your widgets here
                        ],
                  ),
                  Row(children: [
                        InkWell(
                        onTap:(){
setState(() {
  editEnabled= true;
});
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0x2096C800),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:   Image(
                                image:AssetImage("assets/images/search.png")),
                          ),
                        ),
                        SizedBox(width: 10,),
                      Container(
                          height: 35,
                          width: 35,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0x2096C800),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:   Image(
                              image:AssetImage("assets/images/info.png")),
                        )
                  ],)
                ],
              ),
            ),
                      ),
                    ),
                    Visibility(
                      visible: editEnabled?true:false,
                      child:
                      Row(

                        children: [
                          SizedBox(width: 15,),
                          Expanded(
                              child: SizedBox(
                                height: 37,
                                child: TextField(
                                  style:SensfixStyles.textwithgrayand12sizeandNormal(Color(0x902F4858)),

                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10,right: 10),
                                      prefixIconConstraints: BoxConstraints(
                                          minHeight: 20,
                                          minWidth: 44
                                      ),
                                      prefixIcon:Padding(
                                        padding: const EdgeInsets.all(11.0),
                                        child: Image(
                                            height: 18,
                                            width: 18,
                                            image:AssetImage("assets/images/search.png")),
                                      ),
                                      enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),

                                        // width: 0.0 produces a thin "hairline" border
                                        borderSide: const BorderSide(color: Color(0xff96C800),width: 0.5),
                                      ),focusedBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),

                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: const BorderSide(color: Color(0xff96C800),width: 0.5),
                                  ),

                                      filled: true,
                                      hintText: "Search in SF-OG-IND-ONG-01 (Top Drive)",
                                      fillColor: Color(0xffFFFFFF)),
                                ),
                              )


                          ),
                          SizedBox(width: 15,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                editEnabled= false;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Color(0x2096C800),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child:   Image(
                                color: Color(0xff96C800),
                                  image:AssetImage("assets/images/close.png")),
                            ),
                          ),
                            SizedBox(width: 10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: TabBar(
                            controller: _controller,

                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(width: 3.0,color: SensfixStyles.appcolor),

                                insets: EdgeInsets.only(right:_tabSelectedIndex==0?20: 20, left:_tabSelectedIndex==0?10:0 )
                            ),
                            // labelPadding: EdgeInsets.only(left: 0, right: 0),
                            unselectedLabelColor: Colors.grey,
unselectedLabelStyle:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                            labelColor: SensfixStyles.black,
                            labelStyle: SensfixStyles.textwithgrayand16sizeandBold(Color(0xff000000)),

                            isScrollable: true,
                            tabs:globals.apptitle=="Sensfix Service"?[

                            Tab(text: "Workflow"),

                              Align(alignment: Alignment.centerLeft,child: Container(

                                  width: 90, child: Tab(text: "Chats"))),
                              Tab(text: "Care Team"),
                              Tab(text: "Job Info",),
                              Tab(text: "Blockchain Logs",),
                              ]: [


                              Align(alignment: Alignment.centerLeft,child: Container(

                                  width: 90, child: Tab(text: "Chats"))),
                              Tab(text: "Care Team"),
                              Tab(text: "Job Info",),
                              Tab(text: "Blockchain Logs",),
                            ]
                          ),
                        )),
                  ],
                ))),
        body: Container(
            color: Color(0xffF2F5FA),
            child:globals.apptitle=="Sensfix Service"?_selectedIndex==0?WorkFlowScreen():_selectedIndex==1?ChatScreen():_selectedIndex==2?CareTeamScreen():_selectedIndex==3?JobInfoScreen():BlockChainLogScreen():_selectedIndex==0?ChatScreen():_selectedIndex==1?CareTeamScreen():_selectedIndex==2?JobInfoScreen():BlockChainLogScreen()),
        ),
    );

  }
  void _onItemTapped(int index) {
    if(index == 1)
    {
      // Navigator.push(context!,
      //     MaterialPageRoute(builder:
      //         (context) =>
      //         ProfileScreen()
      //     )
      // );
    }
    setState(() {
      _selectedIndex = index;
    });
  }
}
