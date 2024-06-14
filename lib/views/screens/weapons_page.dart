import 'package:flutter/material.dart';
import 'package:new_api/controller/gun_controller.dart';
import 'package:new_api/utils/routes.dart';
import 'package:provider/provider.dart';

class Weapons_Page extends StatelessWidget {
  const Weapons_Page({super.key});

  @override
  Widget build(BuildContext context) {
    GunsController g = Provider.of<GunsController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GUNS",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff171925),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          // itemCount: 10,
          itemCount: g.allcode.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                MyRoutes.gundetail,
                arguments: g.allcode[index],
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
                    g.allcode[index].displayName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Image.network(
                    g.allcode[index].displayIcon,
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
      backgroundColor: Color(0xff171925),
    );
  }
}
