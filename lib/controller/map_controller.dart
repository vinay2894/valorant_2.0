import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:new_api/helper/api_Helper.dart';
import 'package:new_api/helper/map_helper.dart';

import '../models/maps_models.dart';

class MapController extends ChangeNotifier {
  List<Mapsmodel> alldata = [];

  ControllersMaps() async {
    log("data come");
    alldata = await MapHelper.mapHelper.come();
    log("DATA $alldata");
    notifyListeners();
  }

  MapController() {
    ControllersMaps();
  }
}
