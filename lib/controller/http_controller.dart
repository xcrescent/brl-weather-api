import 'package:http/http.dart' as http;


class HttpController {
  Future<http.Response> fetchWeather() {
    return http.get(Uri.parse('https://weatherbit-v1-mashape.p.rapidapi.com/forecast/3hourly?lat=35.5&lon=-78.5'));
  }

}