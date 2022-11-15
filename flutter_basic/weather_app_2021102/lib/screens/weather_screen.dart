import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData});
  final dynamic parseWeatherData;
  // const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    var myJson = weatherData['weather'][0]['description'];
    print(myJson);
    var wind = weatherData['weather']['speed'];
    print(myJson);
    var id = weatherData['id'];
    print(myJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'City name',
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Temperature',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
