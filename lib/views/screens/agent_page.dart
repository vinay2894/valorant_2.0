import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_api/controller/api_controller.dart';
import 'package:new_api/utils/routes.dart';
import 'package:provider/provider.dart';

class Agent_Page extends StatelessWidget {
  Agent_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AGENTS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff171925),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Consumer<ApiController>(
                builder: (context, pro, _) => GridView.builder(
                  itemCount: pro.alldata.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        MyRoutes.detail,
                        arguments: pro.alldata[index],
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFc7f458ff),
                            Color(0xFFd56324ff),
                            Color(0xff3a2656ff),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            pro.alldata[index].developerName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Image.network(
                            pro.alldata[index].fullPortraitV2,
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff171925),
    );
  }
}
