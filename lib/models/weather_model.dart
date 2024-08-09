class WeatherModel {
  final DateTime date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});
  factory WeatherModel.fromjson(dynamic data) {
    var jsondata = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: DateTime.parse(data['current']['last_updated']),
        temp: jsondata['avgtemp_c'],
        maxTemp: jsondata['maxtemp_c'],
        minTemp: jsondata['mintemp_c'],
        weatherStateName: jsondata['condition']['text']);
  }
}
