import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/api_controller.dart';
import '../../utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VALORANT GUIDE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff171925),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff171925),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.agents);
              },
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 170,
                    width: 700,
                    decoration: BoxDecoration(
                      color: Color(0xff171925),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.85, 0),
                    child: Text(
                      "AGENTS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: -50,
                    bottom: 20,
                    left: 100,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Agent3.png',
                      ),
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.weapon);
              },
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 170,
                    width: 700,
                    decoration: BoxDecoration(
                      color: Color(0xff171925),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.90, 0.0),
                    child: Text(
                      "GUNS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: -8,
                    bottom: 20,
                    left: 120,
                    child: Image(
                      image: AssetImage(
                        'assets/images/weapon.png',
                      ),
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.maps);
              },
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 170,
                    width: 700,
                    decoration: BoxDecoration(
                      color: Color(0xff171925),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.85, 0),
                    child: Text(
                      "MAPS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: -50,
                    bottom: 20,
                    left: 120,
                    child: Image(
                      image: AssetImage(
                        'assets/images/map.png',
                      ),
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
