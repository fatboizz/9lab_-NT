import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);

const kMessageTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

class Constants {
  // Open-Meteo API - hoàn toàn miễn phí, không cần API key
  static const String weatherApiURL = 'https://api.open-meteo.com/v1/forecast';
  static const String geocodingApiURL = 'https://geocoding-api.open-meteo.com/v1/search';
}

