
import 'package:flutter/material.dart';
import 'package:sensfix/screens/new_report_screen.dart';
import 'package:sensfix/screens/profile_screen.dart';
import 'package:sensfix/screens/service/service_info_screen.dart';
import 'package:sensfix/widget/my_report_list_item.dart';
import 'package:sensfix/widget/service_close_report_item.dart';
import 'package:sensfix/widget/service_open_report_item.dart';

import '../../utils/theme/theme.dart';
class ServiceDashboardScreen extends StatefulWidget {
  const ServiceDashboardScreen({Key? key}) : super(key: key);

  @override
  _ServiceDashboardScreenState createState() => _ServiceDashboardScreenState();
}

class _ServiceDashboardScreenState extends State<ServiceDashboardScreen> with SingleTickerProviderStateMixin  {
  int _selectedIndex = 0;
  int _tabSelectedIndex = 0;
  TabController? _controller;
  bool firstTabSelected=true;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(vsync: this, length: 2);

    _controller!.addListener(() {
      setState(() {
        _tabSelectedIndex = _controller!.index;
        print("Selected index $_tabSelectedIndex");
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

            backgroundColor: Colors.white,
            titleSpacing: 0,
            bottom:PreferredSize(
                preferredSize:  Size.fromHeight((_tabSelectedIndex==0 || _tabSelectedIndex==1)&& _selectedIndex==0?45.0:10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 40,
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Jobs",style: SensfixStyles.textwithgrayand24sizeandBold(Color(0xff000000)),)
                        ),
                        IconButton(icon:Image(image: AssetImage("assets/images/logout.png"), height: 22,width: 22,),
                            onPressed: () async {


                            })
                      ],
                    ),
                    Visibility(
                      visible: firstTabSelected?true:false,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: TabBar(
                              controller: _controller,

                              indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(width: 3.0,color: SensfixStyles.appcolor),

                                  insets: EdgeInsets.only(right:_tabSelectedIndex==0?40: 20, left:_tabSelectedIndex==0?10:0 )
                              ),
                              labelPadding: EdgeInsets.only(left: 0, right: 0),
                              unselectedLabelStyle:SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff2F4858)) ,
                              labelColor: SensfixStyles.black,
                              unselectedLabelColor: Color(0x902F4858),
                              labelStyle: SensfixStyles.textwithgrayand16sizeandBold(Color(0xff000000)),

                              isScrollable: true,
                              tabs: [
                                Align(alignment: Alignment.centerLeft,child: Container(
                                    padding: EdgeInsets.only(right: 20),
                                    width: 90, child: Tab(text: "Open"))),
                                Tab(text: "Closed",),
                              ],
                            ),
                          )),
                    ),
                  ],
                ))),
        body:
        _tabSelectedIndex==0&& _selectedIndex==0?
        Container(
          color: Color(0xffffffff),
          child:   ListView(


            children: [
              ServiceOpenReportItem(),
              ServiceOpenReportItem(),
              ServiceOpenReportItem(),
              ServiceOpenReportItem(),

            ],),
        ):_tabSelectedIndex==1&& _selectedIndex==0?
        Container(
          color: Color(0xffffffff),
          child:   ListView(


            children: [
              ServiceCloseReportItem(index: 0,),
              ServiceCloseReportItem(index: 1,),
              ServiceCloseReportItem(index: 2,),
              ServiceCloseReportItem(index: 3,),

            ],),
        ):_selectedIndex==1?ProfileScreen():ServiceInfoScreen(),
        bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Container(
                      padding: EdgeInsets.only(bottom: 5, top: 5),
                      child: Image(image:AssetImage("assets/images/home.png"),height: 25,width: 25,color: Colors.white)),
                  label :'Home',

                  backgroundColor:  Color(0xff96C800)
              ),
              BottomNavigationBarItem(
                  icon: Container(
                      padding: EdgeInsets.only(bottom: 5, top: 5),

                      child: Image(image:AssetImage("assets/images/user_home.png"),height: 25,width: 25,color: Colors.white,)),
                  label :'Profile',
                  backgroundColor:  Color(0xff96C800)


              ), BottomNavigationBarItem(
                  icon: Container(
                      padding: EdgeInsets.only(bottom: 5, top: 5),

                      child: Image(image:AssetImage("assets/images/info_home.png"),height: 25,width: 25,color: Colors.white)),
                  label :'Info',
                  backgroundColor:  Color(0xff96C800)


              ),

            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedLabelStyle: SensfixStyles.textwithgrayand12sizeandNormal(SensfixStyles.white),
showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor  :Color(0x70ffffff) ,
            selectedItemColor: Colors.white,
            iconSize: 40,
            backgroundColor:  Color(0xff96C800),

            onTap: _onItemTapped,
            elevation: 5
        ),
      ),
    );
  }
  void _onItemTapped(int index) {
    print("selected index btm ${index}");
    if(index == 0)
    {
      setState(() {
        firstTabSelected=true;
        _tabSelectedIndex=0;
      });
    }
    else
    {
      firstTabSelected=false;

    }
    setState(() {
      _selectedIndex = index;
    });
  }
}
