import 'package:flutter/material.dart';
import 'package:new_api/controller/map_controller.dart';
import 'package:new_api/utils/routes.dart';
import 'package:provider/provider.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    MapController m = Provider.of<MapController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAPS",
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
        padding: EdgeInsets.all(
          10,
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: ListView.builder(
            itemCount: m.alldata.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.mapdetail);
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        // child: ListView.builder(
        //   itemCount: m.alldata.length,
        //   itemBuilder: (context, index) => Container(
        //     height: 250,
        //     width: double.infinity,
        //     color: Colors.blue,
        //   ),
        // ),
      ),
    );
  }
}
