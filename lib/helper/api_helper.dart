import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_api/models/weapons_models.dart';

import '../models/maps_models.dart';
import '../models/valorant_models.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();
  List<Valorantmodel> allCharacter = [];
  List<WeaponsModel> allWeapons = [];
  final String api = 'https://valorant-api.com/v1/agents';
  final String gun = 'https://valorant-api.com/v1/weapons';

  get() async {
    // http.get(Uri.parse(api));
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List allData = data['data'] ?? [];
      allCharacter =
          allData.map((e) => Valorantmodel.fromMap(data: e)).toList();
      return allCharacter;
    }
  }

  load() async {
    http.Response response = await http.get(
      Uri.parse(gun),
    );
    if (response.statusCode == 200) {
      var code = jsonDecode(response.body);
      List allCode = code['data'] ?? [];
      allWeapons = allCode.map((e) => WeaponsModel.fromMap(data: e)).toList();
      return allWeapons;
    }
  }
}
