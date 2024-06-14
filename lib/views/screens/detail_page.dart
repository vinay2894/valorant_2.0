import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_api/models/valorant_models.dart';

class Detail_Page extends StatelessWidget {
  const Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    Valorantmodel alldata =
        ModalRoute.of(context)!.settings.arguments as Valorantmodel;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFc7f458ff),
                    Color(0xFFd56324ff),
                    Color(0xff3a2656ff),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Text(
                          "AGENT DETAILS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      image: NetworkImage(alldata.fullPortraitV2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "CONTROLLER",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white,
                      height: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment(-0.96, 0.0),
                      child: Text(
                        "Description :- ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "${alldata.description}",
                      maxLines: 5,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.white,
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("hey"),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
