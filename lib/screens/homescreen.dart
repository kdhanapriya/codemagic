

import 'package:flutter/material.dart';
import 'package:sensfix/screens/new_report_screen.dart';
import 'package:sensfix/screens/profile_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';
import 'package:sensfix/widget/my_report_list_item.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

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
                height: 50,
                padding: EdgeInsets.only(left: 10),
                child: Row(children: [Image(
                  image:AssetImage("assets/images/appbarlogo.png"),
                  height: 40,

                )],),
              ),
              IconButton(icon: Icon( Icons.camera_alt_outlined,size: 28,color: SensfixStyles.appcolor),
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
                  labelColor: SensfixStyles.appcolor,
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
(_tabSelectedIndex==0 || _tabSelectedIndex==1)&& _selectedIndex==0?Container(
  color: Color(0xffF2F5FA),
  child:   ListView(


    children: [
    MyReportListItem(),
    MyReportListItem(),
    MyReportListItem(),
    MyReportListItem(),
  ],),
):_selectedIndex==1?NewReportScreen():ProfileScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.only(bottom: 5, top: 5),
                    child: Image(image:AssetImage("assets/images/myreq-ghos.png"),height: 25,width: 25,color: _selectedIndex==0?Colors.white :Color(0x70ffffff))),
                label :'My Reports',

                backgroundColor:  Color(0xff808645)
            ),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.only(bottom: 5, top: 5),

                    child: Image(image:AssetImage("assets/images/add-ghost.png"),height: 25,width: 25,color: _selectedIndex==1?Colors.white :Color(0x70ffffff),)),
                label :'New Report',
                backgroundColor:  Color(0xff808645)


            ), BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.only(bottom: 5, top: 5),

                    child: Image(image:AssetImage("assets/images/user-active.png"),height: 25,width: 25,color: _selectedIndex==2?Colors.white :Color(0x70ffffff),)),
                label :'View Profile',
                backgroundColor:  Color(0xff808645)


            ),

          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
            selectedLabelStyle: SensfixStyles.textwithgrayand12sizeandNormal(SensfixStyles.white),

            unselectedItemColor  :Color(0x70ffffff) ,
          selectedItemColor: Colors.white,
          iconSize: 40,
          backgroundColor:  Color(0xff808645),

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
