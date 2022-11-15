import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rental_car_app/data/remote/responses/car_model.dart';

const host = '192.168.1.155:8000';

class CarRepository {
  Future<List<CarModel>?> getCars() async {
    try {
      final url = Uri.http(host, '/cars');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);

        return List<Map<String, dynamic>>.from(decoded).map<CarModel>(CarModel.fromJson).toList();
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
