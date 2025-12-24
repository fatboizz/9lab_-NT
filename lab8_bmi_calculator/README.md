# Lab 8: BMI Calculator

BMI Calculator là một ứng dụng Flutter cơ bản giúp người dùng tính chỉ số khối cơ thể (BMI) dựa trên chiều cao và cân nặng. Ứng dụng này là một bài tập tuyệt vời cho người mới học Flutter để tìm hiểu về cách xây dựng giao diện người dùng có thể tương tác, quản lý trạng thái, và điều hướng giữa các màn hình.

## Nội dung tìm hiểu

### 1. Sử dụng Flutter SDK để xây dựng ứng dụng:

- Tạo dự án Flutter và tổ chức mã nguồn theo module: components, screens, constants,...
- Tạo giao diện bằng các widget Flutter như MaterialApp, Scaffold, Column, Expanded, Slider, Row, Text, IconButton,...

### 2. Tùy chỉnh giao diện người dùng theo Material Design:

- Áp dụng AppBar, Card, Color, Icons, TextStyle, v.v.
- Dùng SliderTheme, RoundIconButton, và TextStyle để thiết kế giao diện đẹp mắt và tương tác tốt.

### 3. Quản lý trạng thái với Stateful Widget:

- Sử dụng `setState()` để cập nhật giao diện khi người dùng thay đổi giới tính, chiều cao, cân nặng hoặc tuổi.

### 4. Phân chia giao diện thành các thành phần tái sử dụng:

- Tạo `ReuseableCard`, `BottomButton`, `IconContent`, `RoundIconButton` để tái sử dụng dễ dàng và tổ chức mã sạch sẽ.

### 5. Điều hướng giữa các màn hình (Navigation):

- Chuyển sang `ResultsPage` bằng `Navigator.push()` khi nhấn nút CALCULATE.
- Quay lại `InputPage` với `Navigator.pop()` khi nhấn nút RE-CALCULATE.

### 6. Tính toán chỉ số BMI và đưa ra đánh giá:

- Dùng lớp `CalculatorBrain` để tính chỉ số BMI, phân loại (Normal, Overweight, Underweight), và đưa ra lời khuyên phù hợp.

## Chức năng thực hiện

### 1. Nhập thông tin cá nhân:

- Cho phép người dùng chọn giới tính (Male, Female).
- Nhập chiều cao bằng Slider (120 – 220 cm).
- Tăng/giảm cân nặng và tuổi bằng các nút + và -.

### 2. Tính toán chỉ số BMI:

- Nhấn CALCULATE để tính BMI dựa trên công thức:
  $$
  BMI = \frac{weight}{(height/100)^2}
  $$
- Hiển thị kết quả trên màn hình ResultsPage bao gồm:
  - Giá trị BMI.
  - Tình trạng sức khỏe (Normal / Overweight / Underweight).
  - Lời khuyên dựa theo kết quả.

### 3. Tái sử dụng giao diện bằng các widget riêng biệt:

- `ReuseableCard` chứa các mục giới tính, chiều cao, cân nặng, tuổi.
- `RoundIconButton` để tạo nút tròn với icon.
- `BottomButton` để dùng chung cho các nút ở cuối màn hình.

### 4. Điều hướng kết quả và tính lại:

- Kết quả hiển thị ở trang ResultsPage.
- Nhấn RE-CALCULATE để quay lại trang nhập liệu và thử lại với thông tin khác.

## Cấu trúc dự án

```
lib/
  ├── main.dart                    # Entry point và MaterialApp
  ├── constants.dart               # Các hằng số màu sắc và TextStyle
  ├── calculator_brain.dart        # Class tính toán BMI
  ├── components/
  │   ├── reusable_card.dart       # Widget Card tái sử dụng
  │   ├── icon_content.dart       # Widget hiển thị icon và label
  │   ├── round_icon_button.dart  # Nút tròn với icon
  │   └── bottom_button.dart      # Nút ở cuối màn hình
  └── screens/
      ├── input_page.dart          # Màn hình nhập liệu
      └── results_page.dart        # Màn hình hiển thị kết quả
```

## Các thành phần chính

### CalculatorBrain

Class xử lý logic tính toán BMI:
- `calculateBMI()`: Tính chỉ số BMI
- `getResult()`: Trả về phân loại (Normal/Overweight/Underweight)
- `getInterpretation()`: Trả về lời khuyên

### InputPage

Màn hình nhập liệu với:
- Chọn giới tính (Male/Female)
- Slider điều chỉnh chiều cao (120-220 cm)
- Nút +/- để điều chỉnh cân nặng
- Nút +/- để điều chỉnh tuổi
- Nút CALCULATE để chuyển sang ResultsPage

### ResultsPage

Màn hình hiển thị kết quả với:
- Giá trị BMI
- Tình trạng sức khỏe
- Lời khuyên
- Nút RE-CALCULATE để quay lại InputPage

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Yêu cầu

- Flutter SDK >= 3.0.0

## Kiến thức học được

- Tổ chức mã nguồn theo module (components, screens, constants)
- Quản lý state với StatefulWidget và setState()
- Sử dụng Slider để nhập liệu
- Tạo các widget tái sử dụng
- Điều hướng giữa các màn hình với Navigator
- Tính toán và hiển thị kết quả
- Tùy chỉnh giao diện theo Material Design
