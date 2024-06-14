import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:new_api/models/valorant_models.dart';

import '../helper/api_Helper.dart';

class ApiController extends ChangeNotifier {
  List<Valorantmodel> alldata = [];

  ControllerApi() async {
    log("Getting data...");
    alldata = await ApiHelper.apiHelper.get() ?? [];
    log("DATA: $alldata");
    notifyListeners();
  }

  ApiController() {
    ControllerApi();
  }
}
