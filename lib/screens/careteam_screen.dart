
import 'package:flutter/material.dart';
import 'package:sensfix/widget/care_Team_list_item.dart';
class CareTeamScreen extends StatefulWidget {
  const CareTeamScreen({Key? key}) : super(key: key);

  @override
  _CareTeamScreenState createState() => _CareTeamScreenState();
}

class _CareTeamScreenState extends State<CareTeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
color: Color(0xffF2F5FA),
      child:    ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,

        itemBuilder: (context, index) {
          return CareteamListItem();
        }
    ),
    );
  }
}
