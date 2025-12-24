# Lab 9: Clima - Weather App

Dự án Weather App là một ứng dụng Flutter cơ bản sử dụng API thời tiết từ OpenWeatherMap để hiển thị thông tin thời tiết hiện tại theo vị trí người dùng hoặc thành phố được nhập vào. Đây là một bài tập lý tưởng giúp người mới học làm quen với việc tích hợp API, xử lý dữ liệu JSON và xây dựng giao diện động trong Flutter.

## Nội dung tìm hiểu

### 1. Cách sử dụng Flutter SDK để xây dựng ứng dụng:

- Tạo dự án Flutter cơ bản.
- Sử dụng các widget như MaterialApp, Scaffold, SafeArea, Column, Text, IconButton, và TextField.
- Áp dụng StatefulWidget để xử lý thay đổi trạng thái khi cập nhật dữ liệu thời tiết.

### 2. Tích hợp Material Design:

- Thiết kế giao diện thời tiết hiện đại, thân thiện người dùng theo hướng dẫn Material Design.
- Dùng các biểu tượng Icons sẵn có của Flutter (ví dụ: location, city).
- Tùy chỉnh màu sắc nền và bố cục linh hoạt để hiển thị thông tin thời tiết.

### 3. Gọi API và xử lý dữ liệu JSON:

- Sử dụng HTTP package để gọi API từ OpenWeatherMap.
- Nhận và phân tích dữ liệu JSON trả về (nhiệt độ, mô tả thời tiết, tên thành phố).
- Ánh xạ dữ liệu JSON vào giao diện người dùng.

### 4. Sử dụng thư viện để lấy vị trí thiết bị:

- Tích hợp thư viện geolocator để lấy vị trí hiện tại của người dùng (GPS).
- Dùng tọa độ để gọi API và trả về dữ liệu thời tiết tương ứng.

### 5. Quản lý cấu trúc thư mục và pubspec.yaml:

- Khai báo các dependencies cần thiết như http, geolocator.
- Tổ chức mã nguồn thành nhiều file như location.dart, networking.dart, weather_model.dart để dễ bảo trì.

## Chức năng thực hiện

### 1. Hiển thị giao diện thời tiết:

- Giao diện chính hiển thị nhiệt độ, mô tả thời tiết và tên thành phố hiện tại.
- Biểu tượng thời tiết thay đổi động dựa trên dữ liệu API.

### 2. Tìm kiếm thời tiết theo vị trí:

- Cho phép người dùng nhập tên thành phố để lấy thông tin thời tiết tương ứng.
- Hiển thị dữ liệu mới sau mỗi lần tìm kiếm thành công.

### 3. Lấy thời tiết theo GPS:

- Tự động lấy vị trí hiện tại của người dùng khi khởi động ứng dụng.
- Có thể cập nhật lại thời tiết theo vị trí hiện tại bằng nút location.

## Cấu trúc dự án

```
lib/
  ├── main.dart                    # Entry point
  ├── models/
  │   └── weather_model.dart      # Model xử lý logic thời tiết
  ├── services/
  │   ├── location.dart           # Lấy vị trí GPS
  │   └── networking.dart         # Gọi API OpenWeatherMap
  ├── screens/
  │   ├── loading_screen.dart     # Màn hình loading
  │   ├── location_screen.dart    # Màn hình hiển thị thời tiết
  │   └── city_screen.dart        # Màn hình nhập tên thành phố
  └── utilities/
      └── constants.dart           # Các hằng số (API key, URL, TextStyle)
```

## API sử dụng

Ứng dụng sử dụng **Open-Meteo API** - hoàn toàn miễn phí và không cần API key!

### Ưu điểm của Open-Meteo:
- ✅ **Hoàn toàn miễn phí** - không cần đăng ký
- ✅ **Không cần API key** - sử dụng ngay lập tức
- ✅ **Không giới hạn requests** - sử dụng thoải mái
- ✅ **Dữ liệu chính xác** - từ các mô hình thời tiết uy tín

### API Endpoints:
- Weather API: `https://api.open-meteo.com/v1/forecast`
- Geocoding API: `https://geocoding-api.open-meteo.com/v1/search`

Không cần cấu hình gì thêm, chỉ cần chạy ứng dụng!

## Cài đặt và chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Dependencies

- `http: ^1.1.0` - Để gọi API
- `geolocator: ^10.1.0` - Để lấy vị trí GPS

## Tài nguyên cần thiết

Thêm các hình ảnh nền vào thư mục `images/`:
- `location_background.jpg` - Hình nền cho màn hình location
- `city_background.jpg` - Hình nền cho màn hình city (tùy chọn)

## Quyền cần thiết

Ứng dụng cần quyền truy cập vị trí để lấy thời tiết theo GPS. Quyền này sẽ được yêu cầu tự động khi ứng dụng chạy.

### Android

Thêm vào `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

### iOS

Thêm vào `ios/Runner/Info.plist`:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location to show weather data.</string>
```

## Kiến thức học được

- Tích hợp API bên ngoài (OpenWeatherMap)
- Xử lý dữ liệu JSON
- Sử dụng HTTP package để gọi API
- Sử dụng geolocator để lấy vị trí GPS
- Quản lý state với StatefulWidget
- Điều hướng giữa các màn hình
- Xử lý async/await
- Tổ chức code theo module (models, services, screens, utilities)
- Xử lý lỗi và hiển thị thông báo
