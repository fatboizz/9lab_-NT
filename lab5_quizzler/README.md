# Lab 5: Xylophone

Ứng dụng Flutter chơi đàn xylophone với các phím màu sắc khác nhau.

## Chạy ứng dụng

```bash
flutter pub get
flutter run
```

## Tài nguyên cần thiết

Thêm 7 file âm thanh vào thư mục `assets/sounds/`:
- note1.wav
- note2.wav
- note3.wav
- note4.wav
- note5.wav
- note6.wav
- note7.wav

Mỗi file âm thanh tương ứng với một nốt nhạc trên đàn xylophone.

## Tính năng

- 7 phím đàn với màu sắc khác nhau (đỏ, cam, vàng, xanh lá, xanh ngọc, xanh dương, tím)
- Nhấn vào mỗi phím để phát ra âm thanh tương ứng
- Sử dụng package audioplayers để phát âm thanh
