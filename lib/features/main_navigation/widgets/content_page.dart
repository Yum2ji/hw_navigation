import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/features/main_navigation/widgets/image_page_screen.dart';

class ContentPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String representImage;
  final String uploadTime;
  final int replyCnt;
  final int likeCnt;
  final List<String> imageUrls;
  final List<String> friendImageUrls;
  const ContentPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.representImage,
    required this.uploadTime,
    required this.replyCnt,
    required this.likeCnt,
    required this.imageUrls,
    required this.friendImageUrls,
  });

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size20,
        vertical: Sizes.size10,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                            widget.representImage,
                          ),
                          radius: 30,
                        ),
                        Positioned(
                          top: 35,
                          left: 35,
                          child: Container(
                            clipBehavior: Clip.none,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 4,
                                color: Colors.white,
                              ),
                              //
                            ),
                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: Sizes.size18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gaps.v10,
                    SizedBox(
                      width: Sizes.size48,
                      child: Center(
                        child: Container(
                          width: 2, // 세로 구분선의 두께
                          color: Colors.grey.shade300, // 구분선 색상
                          height: widget.imageUrls.isNotEmpty
                              ? 220
                              : 50, // 부모의 높이에 맞게 크기 조정
                        ),
                      ),
                    ),
                    Gaps.v10,
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          //color: Colors.red,
                          ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 28,
                            child: Container(
                              clipBehavior: Clip.none,
                              width: 31,
                              height: 31,
                              decoration: const BoxDecoration(
                                  // color: Colors.black,
                                  ),
                              child: ClipOval(
                                child: Image.network(
                                  widget.friendImageUrls[0],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 7,
                            left: 0,
                            child: Container(
                              width: 28,
                              height: 28,
                              decoration: const BoxDecoration(
                                  // color: Colors.black,
                                  ),
                              child: ClipOval(
                                child: Image.network(
                                  widget.friendImageUrls[1],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 28,
                            left: 21,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  // color: Colors.black,
                                  ),
                              child: ClipOval(
                                child: Image.network(
                                  widget.friendImageUrls[2],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.h14,
              Flexible(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                    fontSize: Sizes.size20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Gaps.h7,
                                const FaIcon(FontAwesomeIcons.solidCircleCheck,
                                    size: Sizes.size20, color: Colors.blue),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  widget.uploadTime,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: Sizes.size16,
                                  ),
                                ),
                                Gaps.h8,
                                const FaIcon(FontAwesomeIcons.ellipsis)
                              ],
                            )
                          ],
                        ),
                        Gaps.v4,
                        widget.subtitle.isNotEmpty
                            ? Text(
                                widget.subtitle,
                                style: const TextStyle(
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.clip,
                              )
                            : Gaps.v20,
                        if (widget.imageUrls.isNotEmpty)
                          const SizedBox(
                            height: 200,
                          ),
                        Gaps.v20,
                        const Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.heart,
                              size: Sizes.size24,
                            ),
                            Gaps.h20,
                            FaIcon(
                              FontAwesomeIcons.comment,
                              size: Sizes.size24,
                            ),
                            Gaps.h20,
                            FaIcon(
                              FontAwesomeIcons.arrowsRotate,
                              size: Sizes.size24,
                            ),
                            Gaps.h20,
                            FaIcon(
                              FontAwesomeIcons.paperPlane,
                              size: Sizes.size24,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gaps.v20,
                    Text(
                      "${widget.replyCnt} replies · ${widget.likeCnt} likes",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: Sizes.size18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: Sizes.size72,
            child: widget.imageUrls.isNotEmpty
                ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ImagePageScreen(
                    imageUrls: widget.imageUrls,
                  ),
                )
                : Container(),
          )
        ],
      ),
    );
  }
}
