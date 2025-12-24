# Lab 9: Clima - Weather App

Dự án Weather App là một ứng dụng Flutter cơ bản sử dụng API thời tiết từ Open-Meteo để hiển thị thông tin thời tiết hiện tại theo vị trí người dùng hoặc thành phố được nhập vào. Đây là một bài tập lý tưởng giúp người mới học làm quen với việc tích hợp API, xử lý dữ liệu JSON và xây dựng giao diện động trong Flutter.

## Nội dung tìm hiểu

- Cách sử dụng Flutter SDK để xây dựng ứng dụng
- Tích hợp Material Design
- Gọi API và xử lý dữ liệu JSON
- Sử dụng thư viện để lấy vị trí thiết bị (geolocator)
- Quản lý cấu trúc thư mục và pubspec.yaml

## Chức năng thực hiện

- Hiển thị giao diện thời tiết với nhiệt độ, mô tả thời tiết và tên thành phố
- Tìm kiếm thời tiết theo vị trí: cho phép người dùng nhập tên thành phố
- Lấy thời tiết theo GPS: tự động lấy vị trí hiện tại khi khởi động ứng dụng

## API sử dụng

Ứng dụng sử dụng **Open-Meteo API** - hoàn toàn miễn phí và không cần API key!

- Weather API: `https://api.open-meteo.com/v1/forecast`
- Geocoding API: `https://geocoding-api.open-meteo.com/v1/search`

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Cấu trúc

- `lib/main.dart` - Entry point
- `lib/models/weather_model.dart` - Model xử lý logic thời tiết
- `lib/services/location.dart` - Lấy vị trí GPS
- `lib/services/networking.dart` - Gọi API Open-Meteo
- `lib/screens/` - Các màn hình (LoadingScreen, LocationScreen, CityScreen)
- `lib/utilities/constants.dart` - Các hằng số

## Tài nguyên

Thêm hình nền vào thư mục `images/` với tên `location_background.jpg`

## Quyền cần thiết

Ứng dụng cần quyền truy cập vị trí để lấy thời tiết theo GPS.

