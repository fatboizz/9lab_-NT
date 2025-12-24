class WeatherModel {
  // Open-Meteo weather codes mapping
  String getWeatherIcon(int weatherCode) {
    // Clear sky
    if (weatherCode == 0) {
      return '☀️';
    }
    // Mainly clear, partly cloudy, and overcast
    else if (weatherCode == 1 || weatherCode == 2 || weatherCode == 3) {
      return '☁️';
    }
    // Fog and depositing rime fog
    else if (weatherCode == 45 || weatherCode == 48) {
      return '🌫';
    }
    // Drizzle: Light, moderate, and dense intensity
    else if (weatherCode >= 51 && weatherCode <= 57) {
      return '🌧';
    }
    // Freezing Drizzle: Light and dense intensity
    else if (weatherCode == 56 || weatherCode == 57) {
      return '🌨';
    }
    // Rain: Slight, moderate and heavy intensity
    else if (weatherCode >= 61 && weatherCode <= 67) {
      return '☔️';
    }
    // Freezing Rain: Light and heavy intensity
    else if (weatherCode == 66 || weatherCode == 67) {
      return '🌨';
    }
    // Snow fall: Slight, moderate, and heavy intensity
    else if (weatherCode >= 71 && weatherCode <= 77) {
      return '☃️';
    }
    // Snow grains
    else if (weatherCode == 77) {
      return '❄️';
    }
    // Rain showers: Slight, moderate, and violent
    else if (weatherCode >= 80 && weatherCode <= 82) {
      return '🌦';
    }
    // Snow showers slight and heavy
    else if (weatherCode == 85 || weatherCode == 86) {
      return '🌨';
    }
    // Thunderstorm: Slight or moderate
    else if (weatherCode == 95) {
      return '⛈';
    }
    // Thunderstorm with slight and heavy hail
    else if (weatherCode == 96 || weatherCode == 99) {
      return '🌩';
    } else {
      return '🤷';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
