import 'package:flutter/cupertino.dart';
import 'package:hw_navigation/features/main_navigation/widgets/reply_content.dart';

class ReplyList extends StatelessWidget {
  const ReplyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(
        children: [
          ReplyContent(
            imageUrl:
                "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
            title: "짱구",
            time: "3h",
            subtitle: const [
              "Give ",
              "@john_mobbin ",
              "a follow if you want to see more travel content!"
            ],
            isSharestory: false,
          ),
          ReplyContent(
            imageUrl:
                "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
            title: "짱구",
            time: "5h",
            subtitle: const ["thanks ", "@Yumi ", "Below image is very good"],
            isSharestory: true,
          ),
          ReplyContent(
            imageUrl:
                "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
            title: "짱구",
            time: "5h",
            subtitle: const [
              "Hello ",
              "@훈이 @유리 @철수 @맹구",
              "see you later."
            ],
            isSharestory: false,
          ),
          ReplyContent(
            imageUrl:
                "https://i.pinimg.com/736x/53/7e/f5/537ef59499259ba707068742f91a10f8.jpg",
            title: "짱구",
            time: "5h",
            subtitle: const ["thanks ", "@Yumi ", "Below image is very good"],
            isSharestory: true,
          ),
        ],
      ),
    );
  }
}