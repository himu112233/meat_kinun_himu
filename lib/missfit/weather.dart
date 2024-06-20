import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  @override
  _WeatherHomePageState createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  String _weatherCondition = 'Sunny';
  bool _isRaining = false;

  void _updateWeather() {
    setState(() {
      _weatherCondition = 'Cloudy';
    });
  }

  void _updateRain(bool isRaining) {
    setState(() {
      _isRaining = isRaining;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Weather Condition: $_weatherCondition',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              _isRaining ? 'It\'s Raining!' : 'No Rain',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateWeather,
              child: Text('Update Weather'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _updateRain(!_isRaining),
              child: Text(_isRaining ? 'Stop Rain' : 'Start Rain'),
            ),
          ],
        ),
      ),
    );
  }
}
