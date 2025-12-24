# Lab 6: Destini

Destini là một ứng dụng Flutter đơn giản cho phép người dùng trải nghiệm câu chuyện tương tác dạng "chọn lựa hành động", tương tự như trò chơi "chọn lối đi". Dự án này giúp người học làm quen với các kiến thức về quản lý logic nhiều nhánh, phân chia class hợp lý và sử dụng Visibility để kiểm soát hiển thị.

## Nội dung tìm hiểu

### 1. Phân tách dữ liệu câu chuyện theo mô hình hướng đối tượng:

- **Class Story**: Lưu trữ dữ liệu từng đoạn truyện và các lựa chọn tiếp theo.
  - `storyTitle`: Nội dung câu chuyện
  - `choice1`: Lựa chọn thứ nhất
  - `choice2`: Lựa chọn thứ hai
  - `nextStory1`: Chỉ số câu chuyện tiếp theo khi chọn choice1
  - `nextStory2`: Chỉ số câu chuyện tiếp theo khi chọn choice2

- **Class StoryBrain**: Xử lý logic điều hướng câu chuyện và trạng thái ứng dụng.
  - Quản lý chỉ số câu chuyện hiện tại
  - Xử lý logic chuyển đổi giữa các câu chuyện
  - Kiểm tra xem có nên hiển thị nút choice2 hay không

### 2. Quản lý trạng thái ứng dụng với StatefulWidget:

- Giao diện thay đổi theo hành động người dùng.
- Lựa chọn câu chuyện tiếp theo dựa vào người dùng chọn choice1 hoặc choice2.
- Sử dụng `setState()` để cập nhật UI khi người dùng chọn lựa chọn.

### 3. Sử dụng Visibility để ẩn/hiện nút bấm khi cần thiết:

- Tự động ẩn nút choice2 khi đến cuối câu chuyện và chỉ còn 1 lựa chọn (ví dụ: "Bắt đầu lại").
- Sử dụng method `buttonShouldBeVisible()` để kiểm tra điều kiện hiển thị.

### 4. Tương tác UI theo Material Design:

- Dùng `TextButton`, `Expanded`, `Container`, và `SafeArea`.
- Nút màu đỏ (choice1) và xanh (choice2) tương ứng với lựa chọn 1 và 2.
- Layout với `Column` và `Expanded` để phân bố không gian hợp lý.

### 5. Sử dụng hình nền trong Flutter UI:

- Cài đặt hình nền từ assets (`images/background.png`).
- Sử dụng `DecorationImage` trong `Container` để hiển thị hình nền.
- `BoxFit.cover` để hình nền phủ toàn bộ màn hình.

## Chức năng thực hiện

### 1. Hiển thị nội dung câu chuyện:

- Một đoạn nội dung văn bản chính (`storyTitle`) hiển thị ở giữa màn hình.
- Hai lựa chọn tương ứng cho người dùng (choice1 và choice2).

### 2. Điều hướng logic câu chuyện:

- Mỗi lựa chọn đưa người dùng đến một câu chuyện khác nhau.
- Sử dụng chỉ số `nextStory1`, `nextStory2` để chuyển đến đoạn tiếp theo trong danh sách `_storyData`.
- Method `nextStory(int choiceNumber)` xử lý logic chuyển đổi.

### 3. Tùy biến hiển thị:

- Khi đến đoạn kết thúc, chỉ hiển thị nút "Bắt đầu lại" (choice1).
- Nút choice2 được ẩn đi bằng `Visibility` widget khi `choice2` rỗng.
- Khi nhấn "Bắt đầu lại", câu chuyện quay về đầu (storyNumber = 0).

## Cấu trúc dự án

```
lib/
  ├── main.dart          # Widget chính và UI
  ├── story.dart         # Class Story để lưu trữ dữ liệu
  └── story_brain.dart   # Class StoryBrain để xử lý logic
```

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Yêu cầu

- Đảm bảo có file hình nền tại `images/background.png`
- Flutter SDK >= 3.0.0

## Kiến thức học được

- Phân tách code thành các class riêng biệt (Story, StoryBrain)
- Quản lý state với StatefulWidget
- Sử dụng Visibility widget để điều khiển hiển thị
- Sử dụng assets (hình ảnh) trong Flutter
- Xây dựng UI với Material Design
- Xử lý logic điều hướng nhiều nhánh
