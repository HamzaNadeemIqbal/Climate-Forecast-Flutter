import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

//    (
//        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    if (response.statusCode == 200) {
      String data = response.body;
//
//      var longitude = jsonDecode(data)['coord']['lon'];
//      print(longitude);
//      var weatherDescription = jsonDecode(data)['weather'][0]['description'];
//      print(weatherDescription);

//       Dynamic Variable
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
