import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:new_api/helper/api_Helper.dart';

import '../models/weapons_models.dart';

class GunsController extends ChangeNotifier {
  List<WeaponsModel> allcode = [];

  ControllerGuns() async {
    log("data load");
    allcode = await ApiHelper.apiHelper.load() ?? [];
    log("DATA $allcode");
    notifyListeners();
  }

  GunsController() {
    ControllerGuns();
  }
}
