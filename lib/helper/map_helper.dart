import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/maps_models.dart';

class MapHelper {
  MapHelper._();

  static final MapHelper mapHelper = MapHelper._();

  List<Mapsmodel> allMaps = [];

  final String map = 'https://valorant-api.com/v1/maps';

  come() async {
    http.Response response = await http.get(
      Uri.parse(map),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List alldata = data['data'] ?? [];
      allMaps = alldata.map((e) => Mapsmodel.fromMap(data: e)).toList();
      return allMaps;
    }
  }
}
