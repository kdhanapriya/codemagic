import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:sensfix/screens/attachment_screen.dart';
import 'package:sensfix/screens/block_chain_log_screen.dart';
import 'package:sensfix/screens/careteam_screen.dart';
import 'package:sensfix/screens/chat_participant_screen.dart';
import 'package:sensfix/screens/chat_screen.dart';
import 'package:sensfix/screens/job_info_screen.dart';
import 'package:sensfix/screens/login_screen.dart';
import 'package:sensfix/screens/new_report_screen.dart';
import 'package:sensfix/screens/options_screen.dart';
import 'package:sensfix/screens/profile_screen.dart';
import 'package:sensfix/screens/service/service_dashboard_screen.dart';
import 'package:sensfix/utils/theme/theme.dart';
import 'package:sensfix/widget/my_report_list_item.dart';
import 'package:sensfix/globals.dart' as globals;

import 'flavor_config.dart';

var flavorConfigProvider;
void mainCommon(FlavorConfig config) {
  globals.apptitle=config.appTitle!;
  flavorConfigProvider = StateProvider((ref) => config);
print("config ${config.appTitle}");
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Sensfix',
      title: context.read(flavorConfigProvider).state.appTitle,
      // theme: context.read(flavorConfigProvider).state.theme,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Open Sans",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary:  SensfixStyles.appcolor,


        ),
      ),
      home: const MyHomePage(title: 'Sensfix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  void initState() {
  Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
                  LoginScreen()
          )
      )
  );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 2065@2x.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Text("")
                /* add child content here */
            ),
            const Center(
              child: Image(
                  height: 100,
                  width: 150,

                  image:AssetImage("assets/images/Layer_x0020_1@2x.png")),
            ),
          ],
        ),





      );
  }
}
