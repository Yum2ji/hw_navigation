import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hw_navigation/constants/gaps.dart';
import 'package:hw_navigation/constants/sizes.dart';
import 'package:hw_navigation/utils.dart';

class ThreadContent extends StatelessWidget {
  String imageUrl;
  String title;
  String time;
  List<String> subtitle;
  bool isSharestory;

  ThreadContent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.subtitle,
    required this.isSharestory,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Column(
      children: [
        Gaps.v10,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      imageUrl,
                    ),
                    radius: 25,
                    child: const Text("짱아아"),
                  ),
                ],
              ),
            ),
            Gaps.h14,
            Flexible(
              flex: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: Sizes.size20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Gaps.h5,
                          const Icon(
                            Icons.more_horiz,
                            size: Sizes.size20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gaps.v5,
                  Text.rich(
                    TextSpan(
                      text: subtitle[0],
                      style:  TextStyle(
                        fontSize: Sizes.size18,
                        color: isDark? Colors.white: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: subtitle[1],
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: subtitle[2],
                        ),
                      ],
                    ),
                  ),
                  Gaps.v5,
                  if (isSharestory)
                    Column(
                      children: [
                        Gaps.v10,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.size14,
                            vertical: Sizes.size14,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      imageUrl,
                                    ),
                                    radius: 13,
                                    child: const Text("짱아"),
                                  ),
                                  Gaps.h10,
                                  const Text(
                                    "iwetmyyplants",
                                    style: TextStyle(
                                      fontSize: Sizes.size18,
                                      //color: Colors.black,
                                    ),
                                  ),
                                  Gaps.h10,
                                  const FaIcon(
                                    FontAwesomeIcons.solidCircleCheck,
                                    size: Sizes.size20,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              Gaps.v10,
                              const Text(
                                "I'm just going to say what we are all thinking and knowing is about to go downity down: There is about to be soe piping hot tea sillage on here daily that people will be ....",
                                style: TextStyle(
                                  fontSize: Sizes.size18,
                               //   color: Colors.black,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Gaps.v10,
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                                child: Image.network(
                                  "https://img.khan.co.kr/news/2017/08/22/l_2017082301002927300235691.jpg",
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                        Gaps.v10,
                      ],
                    ),
                  const Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heart,
                      ),
                      Gaps.h16,
                      Icon(Icons.mode_comment_outlined),
                      Gaps.h16,
                      FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
                      Gaps.h16,
                      FaIcon(
                        FontAwesomeIcons.paperPlane,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Gaps.v10,
        Divider(
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}
