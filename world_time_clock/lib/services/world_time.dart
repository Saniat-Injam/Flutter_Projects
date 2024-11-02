import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // location name for the UI
  String? time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api end point

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      // Make the request
      Response response =
          await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);

      // Get properties from data
      String datetime = data["utc_datetime"];
      String offset = data["utc_offset"].substring(1, 3);

      // Create a DateTime Object
      DateTime now = DateTime.parse(datetime);
      now = now.add((Duration(hours: int.parse(offset))));

      // Set the time property
      time = now.toString();
    } catch (e) {
      //print("Error detected: $e ");
      time = "Time data not availablee";
    }
  }
}
