
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sensfix/model/workflow_sample_model.dart';
import 'package:sensfix/utils/theme/theme.dart';
class WorkFlowScreen extends StatefulWidget {
  const WorkFlowScreen({Key? key}) : super(key: key);

  @override
  _WorkFlowScreenState createState() => _WorkFlowScreenState();
}

class _WorkFlowScreenState extends State<WorkFlowScreen> {
  bool showExitTxt=false;
  List<WorkflowSample> list=[];
  @override
  void initState() {
    // TODO: implement initState
    for(int i = 0 ;i<5;i++)
      {
        WorkflowSample workflowSample = WorkflowSample(i,"Check bolts for adjusting isolator are correctly adjusted and secured with the locking nut","",0, false);
    list.add(workflowSample);
      }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10, bottom: 30),
      color: Color(0xffF4F7FA),
      child: Column(


        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("   3/10 Task Completed", style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff021E2F)),), Row(children: [Text("View Completed", style: SensfixStyles.textwithgrayand16sizeandNormal(Color(0xff021E2F)),), Switch(value: false, onChanged: (con){})],)],),
          Visibility(
            visible: false,
            child: Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               Image(image: AssetImage("assets/images/pad_img.png"), height: 250,width:250),
                Text("Nothing to Show!!", style: SensfixStyles.textwithgrayand22sizeandBold(Color(0xff000000)),),
                SizedBox(height: 10,),
                Text("You have completed all the Jobs.", style: SensfixStyles.textwithgrayand14sizeandNormal(Color(0x60021E2F)),)
              ],),
            ),
          ),

          Visibility(
            visible: true,
            child: Expanded(
              child: ListView.builder(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: list.length,

                      itemBuilder: (context, index) {
                        return
                          Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Card(
                            color: Colors.white,
                            child: Slidable(
                              // Specify a key if the Slidable is dismissible.
                              key: const ValueKey(0),

                              // The start action pane is the one at the left or the top side.
                              startActionPane: ActionPane(
                                // A motion is a widget used to control how the pane animates.
                                motion: const ScrollMotion(),
                                extentRatio: 0.3,
                                // A pane can dismiss the Slidable.
                                dismissible: DismissiblePane(onDismissed: () {}),

                                // All actions are defined in the children parameter.
                                children:  [
                                  // A SlidableAction can have an icon and/or a label.
                                  CustomSlidableAction(
                                    onPressed: (co){
                                      setState(() {
                                        list[index].status=1;
                                      });
                                    },

                                    backgroundColor: Color(0xFF15BA46),
                                    foregroundColor: Colors.white,
                                    child: Image(image: AssetImage("assets/images/tick.png"), width: 30,height: 30,color: Color(0xffffffff),),
                                    // icon:Icons.add_circle_outline
                                  ),

                                ],
                              ),

                              // The end action pane is the one at the right or the bottom side.
                              endActionPane:  ActionPane(
                                extentRatio: 0.3,
                                motion: ScrollMotion(),
                                children: [
                                  CustomSlidableAction(
                                    // An action can be bigger than the others.
                                    flex: 1,
                                    onPressed: (co){
                                      setState(() {
                                        list[index].status=2;
                                      });
                                    },

                                    backgroundColor: Color(0xFFCB1600),
                                    foregroundColor: Colors.white,
                                    child: Image(image: AssetImage("assets/images/cancel.png"), width: 30,height: 30,color: Color(0xffffffff),),

                                    // label: 'Archive',
                                  ),


                                ],
                              ),

                              // The child of the Slidable is what the user sees when the
                              // component is not dragged.
                              child: Container(
                                padding: EdgeInsets.all(15),
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          list[index].showEditbox = !list[index].showEditbox;
                                          // showExitTxt=!showExitTxt;
                                        });
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [Column(
                                          children: [
                                            SizedBox(height: 5,),
                                            Image(image: AssetImage(list[index].status==0?"assets/images/grey_dot.png":list[index].status==1?"assets/images/tick_1.png":"assets/images/close_1.png"), height: 15,width: 15,),
                                          ],
                                        ),SizedBox(width: 10,),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text("Check bolts for adjusting isolator are correctly adjusted and secured with the locking nut", style: SensfixStyles.textwithgrayand17sizeandNormal(Color(0xff000000)),),
                                               SizedBox(height: 10,),
                                                Text("Check bolts for adjusting isolator are correctly adjusted and secured with the locking nut", style: SensfixStyles.textwithgrayand13sizeandNormal(Color(0x60021E2F)),),

                                              ],
                                            ),
                                          )],),
                                    ),

                                    Visibility(
                                        visible: list[index].showEditbox,

                                        child: SizedBox(height: 10,)),
                                    Visibility(
                                      visible: list[index].showEditbox,
                                      child: Row(

                                        children: [
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
                                                      // prefixIcon:Padding(
                                                      //   padding: const EdgeInsets.all(11.0),
                                                      //   child: Image(
                                                      //       height: 18,
                                                      //       width: 18,
                                                      //       image:AssetImage("assets/images/search.png")),
                                                      // ),
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
                                                      hintText: "Add Remarks...",
                                                      fillColor: Color(0xffFFFFFF)),
                                                ),
                                              )


                                          ),
                                          SizedBox(width: 15,),
                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                // editEnabled= false;
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
                                          SizedBox(width: 10,),  InkWell(
                                            onTap: (){
                                              setState(() {
                                                // editEnabled= false;
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
                                          SizedBox(width: 10,),  InkWell(
                                            onTap: (){
                                              setState(() {
                                                // editEnabled= false;
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

                                        ],
                                      ),
                                    ),
                                  ],
                                ),),
                            ),
                        ),
                          );
                      }

              ),
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}