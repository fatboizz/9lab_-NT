# Lab 6: Destini

Destini là một ứng dụng Flutter đơn giản cho phép người dùng trải nghiệm câu chuyện tương tác dạng "chọn lựa hành động", tương tự như trò chơi "chọn lối đi". Dự án này giúp người học làm quen với các kiến thức về quản lý logic nhiều nhánh, phân chia class hợp lý và sử dụng Visibility để kiểm soát hiển thị.

## Nội dung tìm hiểu

- Phân tách dữ liệu câu chuyện theo mô hình hướng đối tượng (Class Story, StoryBrain)
- Quản lý trạng thái ứng dụng với StatefulWidget
- Sử dụng Visibility để ẩn/hiện nút bấm khi cần thiết
- Tương tác UI theo Material Design
- Sử dụng hình nền trong Flutter UI

## Chức năng thực hiện

- Hiển thị nội dung câu chuyện với hai lựa chọn cho người dùng
- Điều hướng logic câu chuyện dựa trên lựa chọn của người dùng
- Tự động ẩn nút khi đến cuối câu chuyện và chỉ còn 1 lựa chọn (ví dụ: "Bắt đầu lại")

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Tài nguyên

Thêm hình nền vào thư mục `images/` với tên `background.png`

