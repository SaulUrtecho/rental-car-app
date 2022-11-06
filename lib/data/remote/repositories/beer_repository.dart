import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rental_car_app/data/remote/responses/beer_model.dart';

class BeerRepository {
  Future<List<BeerModel>?> getBeers() async {
    final url = Uri.https('api.openbrewerydb.org', 'breweries', {'per_page': '10'});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);

      return List<Map<String, dynamic>>.from(decoded).map<BeerModel>(BeerModel.fromJson).toList();
    } else {
      return null;
    }
  }
}
