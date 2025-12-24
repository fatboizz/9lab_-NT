import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utilities/constants.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    try {
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      } else {
        print('Error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }

  // Lấy thời tiết theo tọa độ
  static Future<dynamic> getWeatherByCoordinates(
      double latitude, double longitude) async {
    try {
      String url =
          '${Constants.weatherApiURL}?latitude=$latitude&longitude=$longitude&current=temperature_2m,weather_code';
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      return null;
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }

  // Tìm kiếm thành phố và lấy tọa độ
  static Future<dynamic> searchCity(String cityName) async {
    try {
      String url = '${Constants.geocodingApiURL}?name=$cityName&count=1';
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['results'] != null && data['results'].isNotEmpty) {
          return data['results'][0];
        }
      }
      return null;
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }

  // Lấy thời tiết theo tên thành phố
  static Future<dynamic> getWeatherByCityName(String cityName) async {
    try {
      // Bước 1: Tìm tọa độ của thành phố
      var cityData = await searchCity(cityName);
      if (cityData == null) {
        return null;
      }

      double latitude = cityData['latitude'];
      double longitude = cityData['longitude'];
      String name = cityData['name'];

      // Bước 2: Lấy thời tiết theo tọa độ
      var weatherData = await getWeatherByCoordinates(latitude, longitude);
      if (weatherData != null) {
        // Thêm tên thành phố vào dữ liệu thời tiết
        weatherData['name'] = name;
      }
      return weatherData;
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }
}
