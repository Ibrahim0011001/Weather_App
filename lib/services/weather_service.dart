import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '7ec13b2dc7094b39800100322240908';
  getweather({required String cityname}) async {
    http.Response res = await http.get(
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityname&days=7'));
    if (res.statusCode == 400) {
      var data = jsonDecode(res.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(res.body);

    WeatherModel weather = WeatherModel.fromjson(data);

    return weather;
  }
}
