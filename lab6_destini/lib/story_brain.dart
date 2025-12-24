import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Chiếc xe của bạn bị hỏng trên một con đường quanh co trong đêm mưa. Bạn quyết định tìm nơi trú ẩn. Bạn thấy một ngôi nhà cũ với ánh đèn mờ nhạt. Bạn gõ cửa.',
      choice1: 'Tôi sẽ vào trong. Tôi cần giúp đỡ.',
      choice2: 'Tốt hơn là tôi nên kiểm tra xem có ai ở đó không.',
      nextStory1: 2,
      nextStory2: 1,
    ),
    Story(
      storyTitle:
          'Bạn trượt chân và ngã xuống một tảng đá. Bạn cảm thấy một chút mơ hồ, nhưng sau đó bạn nhận ra một chiếc xe tải đang dừng lại. Một người đàn ông với chiếc mũ rộng vành bước ra và hỏi bạn có cần giúp đỡ không.',
      choice1: 'Tôi sẽ chấp nhận. Cảm ơn bạn!',
      choice2: 'Tốt hơn là tôi nên hỏi xem anh ấy có phải là kẻ giết người không.',
      nextStory1: 2,
      nextStory2: 3,
    ),
    Story(
      storyTitle:
          'Khi bạn bước vào, bạn nghe thấy một giọng nói từ phía sau: "Tôi đã chờ bạn lâu rồi, bạn của tôi." Bạn quay lại và thấy một người đàn ông với một con dao. Bạn biết rằng đây là kết thúc.',
      choice1: 'Bắt đầu lại',
      choice2: '',
      nextStory1: 0,
      nextStory2: 0,
    ),
    Story(
      storyTitle:
          'Bạn hỏi: "Bạn có phải là kẻ giết người không?" Người đàn ông cười và nói: "Không, tôi là một cảnh sát đang tìm kiếm một kẻ giết người. Tôi rất vui khi gặp bạn. Bạn có muốn tôi đưa bạn đến đồn cảnh sát không?"',
      choice1: 'Tôi sẽ chấp nhận. Cảm ơn bạn!',
      choice2: '',
      nextStory1: 4,
      nextStory2: 0,
    ),
    Story(
      storyTitle:
          'Bạn đến đồn cảnh sát và được chào đón nồng nhiệt. Cảnh sát trưởng nói với bạn: "Cảm ơn bạn đã giúp chúng tôi bắt được kẻ giết người. Bạn đã cứu nhiều mạng sống. Bạn là một anh hùng!"',
      choice1: 'Bắt đầu lại',
      choice2: '',
      nextStory1: 0,
      nextStory2: 0,
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      _storyNumber = _storyData[_storyNumber].nextStory1;
    } else if (choiceNumber == 2) {
      _storyNumber = _storyData[_storyNumber].nextStory2;
    }

    // Reset về đầu nếu đã đến cuối
    if (_storyNumber >= _storyData.length) {
      _storyNumber = 0;
    }
  }

  bool buttonShouldBeVisible() {
    // Ẩn nút choice2 nếu choice2 rỗng (đã đến cuối câu chuyện)
    return _storyData[_storyNumber].choice2.isNotEmpty;
  }
}

