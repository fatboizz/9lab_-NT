# Lab 8: BMI Calculator

BMI Calculator là một ứng dụng Flutter cơ bản giúp người dùng tính chỉ số khối cơ thể (BMI) dựa trên chiều cao và cân nặng. Ứng dụng này là một bài tập tuyệt vời cho người mới học Flutter để tìm hiểu về cách xây dựng giao diện người dùng có thể tương tác, quản lý trạng thái, và điều hướng giữa các màn hình.

## Nội dung tìm hiểu

- Sử dụng Flutter SDK để xây dựng ứng dụng và tổ chức mã nguồn theo module
- Tùy chỉnh giao diện người dùng theo Material Design
- Quản lý trạng thái với Stateful Widget
- Phân chia giao diện thành các thành phần tái sử dụng
- Điều hướng giữa các màn hình (Navigation)
- Tính toán chỉ số BMI và đưa ra đánh giá

## Chức năng thực hiện

- Nhập thông tin cá nhân: chọn giới tính, nhập chiều cao bằng Slider, tăng/giảm cân nặng và tuổi
- Tính toán chỉ số BMI và hiển thị kết quả trên màn hình ResultsPage
- Tái sử dụng giao diện bằng các widget riêng biệt (ReuseableCard, RoundIconButton, BottomButton)
- Điều hướng kết quả và tính lại

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Cấu trúc

- `lib/main.dart` - Entry point
- `lib/screens/` - Các màn hình (InputPage, ResultsPage)
- `lib/components/` - Các widget tái sử dụng
- `lib/constants.dart` - Các hằng số
- `lib/calculator_brain.dart` - Logic tính toán BMI

