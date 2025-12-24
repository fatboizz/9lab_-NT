import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../services/location.dart';
import '../services/networking.dart';
import '../utilities/constants.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  final dynamic locationWeather;

  const LocationScreen({super.key, this.locationWeather});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  int? temperature;
  String? weatherIcon;
  String? cityName;
  String? weatherMessage;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }

      // Open-Meteo API structure
      if (weatherData['current'] != null) {
        double temp = weatherData['current']['temperature_2m'];
        temperature = temp.toInt();
        int condition = weatherData['current']['weather_code'];
        weatherIcon = weather.getWeatherIcon(condition);
        weatherMessage = weather.getMessage(temperature!);
        cityName = weatherData['name'] ?? 'Unknown Location';
      } else {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Invalid weather data';
        cityName = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () async {
                      Location location = Location();
                      await location.getCurrentLocation();

                      if (location.latitude != null &&
                          location.longitude != null) {
                        var weatherData = await NetworkHelper
                            .getWeatherByCoordinates(
                          location.latitude!,
                          location.longitude!,
                        );

                        if (weatherData != null) {
                          // Thêm tên location (có thể dùng reverse geocoding sau)
                          weatherData['name'] = 'Current Location';
                        }
                        updateUI(weatherData);
                      }
                    },
                    child: const Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      var typedName = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CityScreen(),
                        ),
                      );
                      if (typedName != null && typedName.isNotEmpty) {
                        var weatherData =
                            await NetworkHelper.getWeatherByCityName(typedName);
                        updateUI(weatherData);
                      }
                    },
                    child: const Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon ?? '',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '$weatherMessage in $cityName!',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
