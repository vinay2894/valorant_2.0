import 'package:flutter/material.dart';
import 'package:new_api/controller/api_controller.dart';
import 'package:new_api/controller/gun_controller.dart';
import 'package:new_api/controller/map_controller.dart';
import 'package:new_api/utils/routes.dart';
import 'package:new_api/views/screens/agent_page.dart';
import 'package:new_api/views/screens/detail_page.dart';
import 'package:new_api/views/screens/gun_details.dart';
import 'package:new_api/views/screens/home_page.dart';
import 'package:new_api/views/screens/map_details.dart';
import 'package:new_api/views/screens/maps_page.dart';
import 'package:new_api/views/screens/splesh_screen.dart';
import 'package:new_api/views/screens/weapons_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ApiController(),
        ),
        ChangeNotifierProvider(
          create: (context) => GunsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => MapController(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splesh,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.splesh: (context) => Splesh_screen(),
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.agents: (context) => Agent_Page(),
        MyRoutes.detail: (context) => Detail_Page(),
        MyRoutes.weapon: (context) => Weapons_Page(),
        MyRoutes.maps: (context) => MapsPage(),
        MyRoutes.gundetail: (context) => GunDetail(),
        MyRoutes.mapdetail: (context) => MapDetail(),
      },
    );
  }
}
